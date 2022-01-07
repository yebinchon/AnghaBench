
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* focus ) (int *,int ) ;} ;
struct TYPE_7__ {scalar_t__* keys; scalar_t__* mouseButtons; TYPE_1__ callbacks; } ;
typedef TYPE_2__ _GLFWwindow ;
typedef int GLFWwindow ;
typedef int GLFWbool ;


 int GLFW_KEY_LAST ;
 int GLFW_MOUSE_BUTTON_LAST ;
 scalar_t__ GLFW_PRESS ;
 int GLFW_RELEASE ;
 int _glfwInputKey (TYPE_2__*,int,int const,int ,int ) ;
 int _glfwInputMouseClick (TYPE_2__*,int,int ,int ) ;
 int _glfwPlatformGetKeyScancode (int) ;
 int stub1 (int *,int ) ;

void _glfwInputWindowFocus(_GLFWwindow* window, GLFWbool focused)
{
    if (window->callbacks.focus)
        window->callbacks.focus((GLFWwindow*) window, focused);

    if (!focused)
    {
        int key, button;

        for (key = 0; key <= GLFW_KEY_LAST; key++)
        {
            if (window->keys[key] == GLFW_PRESS)
            {
                const int scancode = _glfwPlatformGetKeyScancode(key);
                _glfwInputKey(window, key, scancode, GLFW_RELEASE, 0);
            }
        }

        for (button = 0; button <= GLFW_MOUSE_BUTTON_LAST; button++)
        {
            if (window->mouseButtons[button] == GLFW_PRESS)
                _glfwInputMouseClick(window, button, GLFW_RELEASE, 0);
        }
    }
}
