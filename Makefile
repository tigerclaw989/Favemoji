#export PREFIX = /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/
#export SDKVERSION = 14.4
#export ARCHS = arm64 arm64e
TARGET := iphone:clang:latest:14.0
ARCHES = arm64 arm64e
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Favemoji

Favemoji_FILES = Tweak.x
Favemoji_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += FavemojiPrefs
include $(THEOS_MAKE_PATH)/aggregate.mk
