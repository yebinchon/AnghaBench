
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int _GLFWwindow ;
struct TYPE_3__ {int display; int * disabledCursorWindow; } ;
struct TYPE_4__ {TYPE_1__ x11; } ;


 int GLFW_CURSOR_DISABLED ;
 int XFlush (int ) ;
 TYPE_2__ _glfw ;
 scalar_t__ _glfwPlatformWindowFocused (int *) ;
 int disableCursor (int *) ;
 int enableCursor (int *) ;
 int updateCursorImage (int *) ;

void _glfwPlatformSetCursorMode(_GLFWwindow* window, int mode)
{
    if (mode == GLFW_CURSOR_DISABLED)
    {
        if (_glfwPlatformWindowFocused(window))
            disableCursor(window);
    }
    else if (_glfw.x11.disabledCursorWindow == window)
        enableCursor(window);
    else
        updateCursorImage(window);

    XFlush(_glfw.x11.display);
}
