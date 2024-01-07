CONFIG -= qt
TEMPLATE = lib

CONFIG += c++1z

SOURCES += \
    libfcgi/os_win32.c  \
    libfcgi/fcgio.cpp \
    libfcgi/fcgi_stdio.c \
    libfcgi/fcgiapp.c

HEADERS += \
    include/fastcgi.h \
    include/fcgi_config_x86.h \
    include/fcgi_stdio.h \
    include/fcgiapp.h \
    include/fcgimisc.h \
    include/fcgio.h \
    include/fcgios.h



INCLUDEPATH += include


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/C:/mingw/lib/ -lws2_32
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/C:/mingw/lib/ -lws2_32

INCLUDEPATH += $$PWD/C:/mingw/include
DEPENDPATH += $$PWD/C:/mingw/include
