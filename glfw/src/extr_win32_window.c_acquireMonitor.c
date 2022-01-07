
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_4__* monitor; int videoMode; } ;
typedef TYPE_2__ _GLFWwindow ;
struct TYPE_8__ {int acquiredMonitorCount; int mouseTrailSize; } ;
struct TYPE_11__ {TYPE_1__ win32; } ;
struct TYPE_10__ {int window; } ;


 int ES_CONTINUOUS ;
 int ES_DISPLAY_REQUIRED ;
 scalar_t__ IsWindowsXPOrGreater () ;
 int SPI_GETMOUSETRAILS ;
 int SPI_SETMOUSETRAILS ;
 int SetThreadExecutionState (int) ;
 int SystemParametersInfo (int ,int ,int *,int ) ;
 TYPE_7__ _glfw ;
 int _glfwInputMonitorWindow (TYPE_4__*,TYPE_2__*) ;
 int _glfwSetVideoModeWin32 (TYPE_4__*,int *) ;

__attribute__((used)) static void acquireMonitor(_GLFWwindow* window)
{
    if (!_glfw.win32.acquiredMonitorCount)
    {
        SetThreadExecutionState(ES_CONTINUOUS | ES_DISPLAY_REQUIRED);



        if (IsWindowsXPOrGreater())
        {
            SystemParametersInfo(SPI_GETMOUSETRAILS, 0, &_glfw.win32.mouseTrailSize, 0);
            SystemParametersInfo(SPI_SETMOUSETRAILS, 0, 0, 0);
        }
    }

    if (!window->monitor->window)
        _glfw.win32.acquiredMonitorCount++;

    _glfwSetVideoModeWin32(window->monitor, &window->videoMode);
    _glfwInputMonitorWindow(window->monitor, window);
}
