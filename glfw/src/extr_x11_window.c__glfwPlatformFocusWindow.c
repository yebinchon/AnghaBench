
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int handle; } ;
struct TYPE_9__ {TYPE_2__ x11; } ;
typedef TYPE_3__ _GLFWwindow ;
struct TYPE_7__ {int display; scalar_t__ NET_ACTIVE_WINDOW; } ;
struct TYPE_10__ {TYPE_1__ x11; } ;


 int CurrentTime ;
 int RevertToParent ;
 int XFlush (int ) ;
 int XRaiseWindow (int ,int ) ;
 int XSetInputFocus (int ,int ,int ,int ) ;
 TYPE_6__ _glfw ;
 int sendEventToWM (TYPE_3__*,scalar_t__,int,int ,int ,int ,int ) ;

void _glfwPlatformFocusWindow(_GLFWwindow* window)
{
    if (_glfw.x11.NET_ACTIVE_WINDOW)
        sendEventToWM(window, _glfw.x11.NET_ACTIVE_WINDOW, 1, 0, 0, 0, 0);
    else
    {
        XRaiseWindow(_glfw.x11.display, window->x11.handle);
        XSetInputFocus(_glfw.x11.display, window->x11.handle,
                       RevertToParent, CurrentTime);
    }

    XFlush(_glfw.x11.display);
}
