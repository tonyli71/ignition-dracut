.PHONY: all
all:
	@echo "(No build step)"

.PHONY: install
install: all
	for x in dracut/*; do \
	  bn=$$(basename $$x); \
	  install -D -t $(DESTDIR)/usr/lib/dracut/modules.d/$${bn} $$x/*; \
	done
	install -D -m 644 -t $(DESTDIR)/usr/lib/systemd/system systemd/*
