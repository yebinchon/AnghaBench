#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int autoIconify; int resizable; int decorated; int floating; int focusOnShow; int /*<<< orphan*/  monitor; } ;
typedef  TYPE_1__ _GLFWwindow ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 int GLFW_AUTO_ICONIFY ; 
 int GLFW_DECORATED ; 
 int GLFW_FALSE ; 
 int GLFW_FLOATING ; 
 int GLFW_FOCUS_ON_SHOW ; 
 int /*<<< orphan*/  GLFW_INVALID_ENUM ; 
 int GLFW_RESIZABLE ; 
 int GLFW_TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(GLFWwindow* handle, int attrib, int value)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;
    FUNC5(window != NULL);

    FUNC0();

    value = value ? GLFW_TRUE : GLFW_FALSE;

    if (attrib == GLFW_AUTO_ICONIFY)
        window->autoIconify = value;
    else if (attrib == GLFW_RESIZABLE)
    {
        if (window->resizable == value)
            return;

        window->resizable = value;
        if (!window->monitor)
            FUNC4(window, value);
    }
    else if (attrib == GLFW_DECORATED)
    {
        if (window->decorated == value)
            return;

        window->decorated = value;
        if (!window->monitor)
            FUNC2(window, value);
    }
    else if (attrib == GLFW_FLOATING)
    {
        if (window->floating == value)
            return;

        window->floating = value;
        if (!window->monitor)
            FUNC3(window, value);
    }
    else if (attrib == GLFW_FOCUS_ON_SHOW)
        window->focusOnShow = value;
    else
        FUNC1(GLFW_INVALID_ENUM, "Invalid window attribute 0x%08X", attrib);
}