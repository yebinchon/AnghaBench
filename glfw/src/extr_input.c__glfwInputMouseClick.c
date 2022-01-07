
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* mouseButton ) (int *,int,int,int) ;} ;
struct TYPE_5__ {char* mouseButtons; TYPE_1__ callbacks; scalar_t__ stickyMouseButtons; int lockKeyMods; } ;
typedef TYPE_2__ _GLFWwindow ;
typedef int GLFWwindow ;


 int GLFW_MOD_CAPS_LOCK ;
 int GLFW_MOD_NUM_LOCK ;
 int GLFW_MOUSE_BUTTON_LAST ;
 int GLFW_RELEASE ;
 char _GLFW_STICK ;
 int stub1 (int *,int,int,int) ;

void _glfwInputMouseClick(_GLFWwindow* window, int button, int action, int mods)
{
    if (button < 0 || button > GLFW_MOUSE_BUTTON_LAST)
        return;

    if (!window->lockKeyMods)
        mods &= ~(GLFW_MOD_CAPS_LOCK | GLFW_MOD_NUM_LOCK);

    if (action == GLFW_RELEASE && window->stickyMouseButtons)
        window->mouseButtons[button] = _GLFW_STICK;
    else
        window->mouseButtons[button] = (char) action;

    if (window->callbacks.mouseButton)
        window->callbacks.mouseButton((GLFWwindow*) window, button, action, mods);
}
