#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__* mouseButtons; } ;
typedef  TYPE_1__ _GLFWwindow ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_INVALID_ENUM ; 
 int GLFW_MOUSE_BUTTON_1 ; 
 int GLFW_MOUSE_BUTTON_LAST ; 
 int GLFW_PRESS ; 
 int GLFW_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ _GLFW_STICK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(GLFWwindow* handle, int button)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;
    FUNC2(window != NULL);

    FUNC0(GLFW_RELEASE);

    if (button < GLFW_MOUSE_BUTTON_1 || button > GLFW_MOUSE_BUTTON_LAST)
    {
        FUNC1(GLFW_INVALID_ENUM, "Invalid mouse button %i", button);
        return GLFW_RELEASE;
    }

    if (window->mouseButtons[button] == _GLFW_STICK)
    {
        // Sticky mode: release mouse button now
        window->mouseButtons[button] = GLFW_RELEASE;
        return GLFW_PRESS;
    }

    return (int) window->mouseButtons[button];
}