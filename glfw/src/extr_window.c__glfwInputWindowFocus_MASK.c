#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  (* focus ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {scalar_t__* keys; scalar_t__* mouseButtons; TYPE_1__ callbacks; } ;
typedef  TYPE_2__ _GLFWwindow ;
typedef  int /*<<< orphan*/  GLFWwindow ;
typedef  int /*<<< orphan*/  GLFWbool ;

/* Variables and functions */
 int GLFW_KEY_LAST ; 
 int GLFW_MOUSE_BUTTON_LAST ; 
 scalar_t__ GLFW_PRESS ; 
 int /*<<< orphan*/  GLFW_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(_GLFWwindow* window, GLFWbool focused)
{
    if (window->callbacks.focus)
        window->callbacks.focus((GLFWwindow*) window, focused);

    if (!focused)
    {
        int key, button;

        for (key = 0;  key <= GLFW_KEY_LAST;  key++)
        {
            if (window->keys[key] == GLFW_PRESS)
            {
                const int scancode = FUNC2(key);
                FUNC0(window, key, scancode, GLFW_RELEASE, 0);
            }
        }

        for (button = 0;  button <= GLFW_MOUSE_BUTTON_LAST;  button++)
        {
            if (window->mouseButtons[button] == GLFW_PRESS)
                FUNC1(window, button, GLFW_RELEASE, 0);
        }
    }
}