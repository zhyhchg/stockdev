all:main.obj main.exe
main.obj: main.cpp
	cl -c -D_X86=1 -DWIN32 -D_DEBUG -D_CONSOLE -Istdafx.h /Fo /Fd main.cpp
main.exe: main.obj
	link main.obj kernel32.lib
