
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int foregroundLockTimeout; } ;
struct TYPE_4__ {TYPE_1__ win32; } ;


 int DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2 ;
 int GLFW_FALSE ;
 int GLFW_TRUE ;
 scalar_t__ IsWindows8Point1OrGreater () ;
 scalar_t__ IsWindowsVistaOrGreater () ;
 int PROCESS_PER_MONITOR_DPI_AWARE ;
 int SPIF_SENDCHANGE ;
 int SPI_GETFOREGROUNDLOCKTIMEOUT ;
 int SPI_SETFOREGROUNDLOCKTIMEOUT ;
 int SetProcessDPIAware () ;
 int SetProcessDpiAwareness (int ) ;
 int SetProcessDpiAwarenessContext (int ) ;
 int SystemParametersInfoW (int ,int ,int *,int ) ;
 int * UIntToPtr (int ) ;
 TYPE_2__ _glfw ;
 int _glfwInitJoysticksWin32 () ;
 int _glfwInitTimerWin32 () ;
 scalar_t__ _glfwIsWindows10CreatorsUpdateOrGreaterWin32 () ;
 int _glfwPollMonitorsWin32 () ;
 int _glfwRegisterWindowClassWin32 () ;
 int _glfwUpdateKeyNamesWin32 () ;
 int createHelperWindow () ;
 int createKeyTables () ;
 int loadLibraries () ;

int _glfwPlatformInit(void)
{



    SystemParametersInfoW(SPI_GETFOREGROUNDLOCKTIMEOUT, 0,
                          &_glfw.win32.foregroundLockTimeout, 0);
    SystemParametersInfoW(SPI_SETFOREGROUNDLOCKTIMEOUT, 0, UIntToPtr(0),
                          SPIF_SENDCHANGE);

    if (!loadLibraries())
        return GLFW_FALSE;

    createKeyTables();
    _glfwUpdateKeyNamesWin32();

    if (_glfwIsWindows10CreatorsUpdateOrGreaterWin32())
        SetProcessDpiAwarenessContext(DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2);
    else if (IsWindows8Point1OrGreater())
        SetProcessDpiAwareness(PROCESS_PER_MONITOR_DPI_AWARE);
    else if (IsWindowsVistaOrGreater())
        SetProcessDPIAware();

    if (!_glfwRegisterWindowClassWin32())
        return GLFW_FALSE;

    if (!createHelperWindow())
        return GLFW_FALSE;

    _glfwInitTimerWin32();
    _glfwInitJoysticksWin32();

    _glfwPollMonitorsWin32();
    return GLFW_TRUE;
}
