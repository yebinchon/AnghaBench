
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_4__* monitor; } ;
typedef TYPE_2__ _GLFWwindow ;
struct TYPE_7__ {int mouseTrailSize; int acquiredMonitorCount; } ;
struct TYPE_10__ {TYPE_1__ win32; } ;
struct TYPE_9__ {TYPE_2__* window; } ;


 int ES_CONTINUOUS ;
 scalar_t__ IsWindowsXPOrGreater () ;
 int SPI_SETMOUSETRAILS ;
 int SetThreadExecutionState (int ) ;
 int SystemParametersInfo (int ,int ,int ,int ) ;
 TYPE_6__ _glfw ;
 int _glfwInputMonitorWindow (TYPE_4__*,int *) ;
 int _glfwRestoreVideoModeWin32 (TYPE_4__*) ;

__attribute__((used)) static void releaseMonitor(_GLFWwindow* window)
{
    if (window->monitor->window != window)
        return;

    _glfw.win32.acquiredMonitorCount--;
    if (!_glfw.win32.acquiredMonitorCount)
    {
        SetThreadExecutionState(ES_CONTINUOUS);


        if (IsWindowsXPOrGreater())
            SystemParametersInfo(SPI_SETMOUSETRAILS, _glfw.win32.mouseTrailSize, 0, 0);
    }

    _glfwInputMonitorWindow(window->monitor, ((void*)0));
    _glfwRestoreVideoModeWin32(window->monitor);
}
