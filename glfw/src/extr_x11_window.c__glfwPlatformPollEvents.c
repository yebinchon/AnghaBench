
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int lastCursorPosX; int lastCursorPosY; } ;
struct TYPE_9__ {TYPE_1__ x11; } ;
typedef TYPE_3__ _GLFWwindow ;
typedef int XEvent ;
struct TYPE_8__ {int display; TYPE_3__* disabledCursorWindow; } ;
struct TYPE_10__ {TYPE_2__ x11; } ;


 int XFlush (int ) ;
 int XNextEvent (int ,int *) ;
 int XPending (int ) ;
 scalar_t__ XQLength (int ) ;
 TYPE_6__ _glfw ;
 int _glfwDetectJoystickConnectionLinux () ;
 int _glfwPlatformGetWindowSize (TYPE_3__*,int*,int*) ;
 int _glfwPlatformSetCursorPos (TYPE_3__*,int,int) ;
 int processEvent (int *) ;

void _glfwPlatformPollEvents(void)
{
    _GLFWwindow* window;


    _glfwDetectJoystickConnectionLinux();

    XPending(_glfw.x11.display);

    while (XQLength(_glfw.x11.display))
    {
        XEvent event;
        XNextEvent(_glfw.x11.display, &event);
        processEvent(&event);
    }

    window = _glfw.x11.disabledCursorWindow;
    if (window)
    {
        int width, height;
        _glfwPlatformGetWindowSize(window, &width, &height);



        if (window->x11.lastCursorPosX != width / 2 ||
            window->x11.lastCursorPosY != height / 2)
        {
            _glfwPlatformSetCursorPos(window, width / 2, height / 2);
        }
    }

    XFlush(_glfw.x11.display);
}
