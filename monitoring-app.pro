QT += qml quick gui widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Refer to the documentation for the
# deprecated API to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        Controllers/navigationcontroller.cpp \
        Controllers/modelcontroller.cpp \
        Model/cpumodel.cpp \
        Model/memorymodel.cpp \
        Model/networkmodel.cpp \
        Model/storagemodel.cpp \
        Model/gpumodel.cpp \
        main.cpp

RESOURCES += qml.qrc \
    icon.qrc

LIBS += -lstatgrab

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target



HEADERS += \
    Controllers/navigationcontroller.h \
    Controllers/modelcontroller.h \
    Model/cpumodel.h \
    Model/memorymodel.h \
    Model/networkmodel.h \
    Model/gpumodel.h \
    Model/storagemodel.h