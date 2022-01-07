
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* mouseButtons; } ;
typedef TYPE_1__ _GLFWwindow ;
typedef int GLFWwindow ;


 int GLFW_INVALID_ENUM ;
 int GLFW_MOUSE_BUTTON_1 ;
 int GLFW_MOUSE_BUTTON_LAST ;
 int GLFW_PRESS ;
 int GLFW_RELEASE ;
 int _GLFW_REQUIRE_INIT_OR_RETURN (int) ;
 scalar_t__ _GLFW_STICK ;
 int _glfwInputError (int ,char*,int) ;
 int assert (int ) ;

int glfwGetMouseButton(GLFWwindow* handle, int button)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;
    assert(window != ((void*)0));

    _GLFW_REQUIRE_INIT_OR_RETURN(GLFW_RELEASE);

    if (button < GLFW_MOUSE_BUTTON_1 || button > GLFW_MOUSE_BUTTON_LAST)
    {
        _glfwInputError(GLFW_INVALID_ENUM, "Invalid mouse button %i", button);
        return GLFW_RELEASE;
    }

    if (window->mouseButtons[button] == _GLFW_STICK)
    {

        window->mouseButtons[button] = GLFW_RELEASE;
        return GLFW_PRESS;
    }

    return (int) window->mouseButtons[button];
}
