# ----------------------------
#  # Makefile Options
# ----------------------------
#
NAME = C64EMU
ICON = icon.png
DESCRIPTION = "C64 Emulator"
COMPRESSED = NO
ARCHIVED = NO
#
CFLAGS = -Wall -Wextra -Oz
#  CXXFLAGS = -Wall -Wextra
#
#  # ----------------------------

include $(shell cedev-config --makefile)

.PHONY: rom
rom: C64BASIC.8xv C64KERN.8xv C64CHAR.8xv

%.8xv: %.ROM
	convbin -i $< -o $@ -n $* -k 8xv
