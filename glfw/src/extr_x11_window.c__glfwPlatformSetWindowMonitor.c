
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_15__ ;


struct TYPE_17__ {int handle; } ;
struct TYPE_19__ {TYPE_1__ x11; TYPE_4__* monitor; int resizable; } ;
typedef TYPE_3__ _GLFWwindow ;
struct TYPE_20__ {TYPE_3__* window; } ;
typedef TYPE_4__ _GLFWmonitor ;
struct TYPE_18__ {int display; } ;
struct TYPE_16__ {TYPE_2__ x11; } ;


 int XFlush (int ) ;
 int XMapRaised (int ,int ) ;
 int XMoveResizeWindow (int ,int ,int,int,int,int) ;
 TYPE_15__ _glfw ;
 int _glfwInputWindowMonitor (TYPE_3__*,TYPE_4__*) ;
 int _glfwPlatformWindowVisible (TYPE_3__*) ;
 int acquireMonitor (TYPE_3__*) ;
 int releaseMonitor (TYPE_3__*) ;
 int updateNormalHints (TYPE_3__*,int,int) ;
 int updateWindowMode (TYPE_3__*) ;
 int waitForVisibilityNotify (TYPE_3__*) ;

void _glfwPlatformSetWindowMonitor(_GLFWwindow* window,
                                   _GLFWmonitor* monitor,
                                   int xpos, int ypos,
                                   int width, int height,
                                   int refreshRate)
{
    if (window->monitor == monitor)
    {
        if (monitor)
        {
            if (monitor->window == window)
                acquireMonitor(window);
        }
        else
        {
            if (!window->resizable)
                updateNormalHints(window, width, height);

            XMoveResizeWindow(_glfw.x11.display, window->x11.handle,
                              xpos, ypos, width, height);
        }

        XFlush(_glfw.x11.display);
        return;
    }

    if (window->monitor)
        releaseMonitor(window);

    _glfwInputWindowMonitor(window, monitor);
    updateNormalHints(window, width, height);

    if (window->monitor)
    {
        if (!_glfwPlatformWindowVisible(window))
        {
            XMapRaised(_glfw.x11.display, window->x11.handle);
            waitForVisibilityNotify(window);
        }

        updateWindowMode(window);
        acquireMonitor(window);
    }
    else
    {
        updateWindowMode(window);
        XMoveResizeWindow(_glfw.x11.display, window->x11.handle,
                          xpos, ypos, width, height);
    }

    XFlush(_glfw.x11.display);
}
