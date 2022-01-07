
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_5__* monitor; } ;
typedef TYPE_3__ _GLFWwindow ;
struct TYPE_9__ {scalar_t__ count; int exposure; int blanking; int interval; int timeout; } ;
struct TYPE_8__ {TYPE_2__ saver; int display; } ;
struct TYPE_12__ {TYPE_1__ x11; } ;
struct TYPE_11__ {TYPE_3__* window; } ;


 int XSetScreenSaver (int ,int ,int ,int ,int ) ;
 TYPE_7__ _glfw ;
 int _glfwInputMonitorWindow (TYPE_5__*,int *) ;
 int _glfwRestoreVideoModeX11 (TYPE_5__*) ;

__attribute__((used)) static void releaseMonitor(_GLFWwindow* window)
{
    if (window->monitor->window != window)
        return;

    _glfwInputMonitorWindow(window->monitor, ((void*)0));
    _glfwRestoreVideoModeX11(window->monitor);

    _glfw.x11.saver.count--;

    if (_glfw.x11.saver.count == 0)
    {

        XSetScreenSaver(_glfw.x11.display,
                        _glfw.x11.saver.timeout,
                        _glfw.x11.saver.interval,
                        _glfw.x11.saver.blanking,
                        _glfw.x11.saver.exposure);
    }
}
