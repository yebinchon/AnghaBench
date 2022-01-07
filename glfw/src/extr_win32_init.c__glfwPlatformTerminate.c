
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rawInput; int clipboardString; int foregroundLockTimeout; scalar_t__ helperWindowHandle; scalar_t__ deviceNotificationHandle; } ;
struct TYPE_4__ {TYPE_1__ win32; } ;


 int DestroyWindow (scalar_t__) ;
 int SPIF_SENDCHANGE ;
 int SPI_SETFOREGROUNDLOCKTIMEOUT ;
 int SystemParametersInfoW (int ,int ,int ,int ) ;
 int UIntToPtr (int ) ;
 int UnregisterDeviceNotification (scalar_t__) ;
 TYPE_2__ _glfw ;
 int _glfwTerminateEGL () ;
 int _glfwTerminateJoysticksWin32 () ;
 int _glfwTerminateWGL () ;
 int _glfwUnregisterWindowClassWin32 () ;
 int free (int ) ;
 int freeLibraries () ;

void _glfwPlatformTerminate(void)
{
    if (_glfw.win32.deviceNotificationHandle)
        UnregisterDeviceNotification(_glfw.win32.deviceNotificationHandle);

    if (_glfw.win32.helperWindowHandle)
        DestroyWindow(_glfw.win32.helperWindowHandle);

    _glfwUnregisterWindowClassWin32();


    SystemParametersInfoW(SPI_SETFOREGROUNDLOCKTIMEOUT, 0,
                          UIntToPtr(_glfw.win32.foregroundLockTimeout),
                          SPIF_SENDCHANGE);

    free(_glfw.win32.clipboardString);
    free(_glfw.win32.rawInput);

    _glfwTerminateWGL();
    _glfwTerminateEGL();

    _glfwTerminateJoysticksWin32();

    freeLibraries();
}
