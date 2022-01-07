
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cursorMode; double virtualCursorPosX; double virtualCursorPosY; } ;
typedef TYPE_1__ _GLFWwindow ;
typedef int GLFWwindow ;


 double DBL_MAX ;
 scalar_t__ GLFW_CURSOR_DISABLED ;
 int GLFW_INVALID_VALUE ;
 int _GLFW_REQUIRE_INIT () ;
 int _glfwInputError (int ,char*,double,double) ;
 int _glfwPlatformSetCursorPos (TYPE_1__*,double,double) ;
 int _glfwPlatformWindowFocused (TYPE_1__*) ;
 int assert (int ) ;

void glfwSetCursorPos(GLFWwindow* handle, double xpos, double ypos)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;
    assert(window != ((void*)0));

    _GLFW_REQUIRE_INIT();

    if (xpos != xpos || xpos < -DBL_MAX || xpos > DBL_MAX ||
        ypos != ypos || ypos < -DBL_MAX || ypos > DBL_MAX)
    {
        _glfwInputError(GLFW_INVALID_VALUE,
                        "Invalid cursor position %f %f",
                        xpos, ypos);
        return;
    }

    if (!_glfwPlatformWindowFocused(window))
        return;

    if (window->cursorMode == GLFW_CURSOR_DISABLED)
    {

        window->virtualCursorPosX = xpos;
        window->virtualCursorPosY = ypos;
    }
    else
    {

        _glfwPlatformSetCursorPos(window, xpos, ypos);
    }
}
