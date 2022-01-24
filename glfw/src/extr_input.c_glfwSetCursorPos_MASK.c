#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ cursorMode; double virtualCursorPosX; double virtualCursorPosY; } ;
typedef  TYPE_1__ _GLFWwindow ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 double DBL_MAX ; 
 scalar_t__ GLFW_CURSOR_DISABLED ; 
 int /*<<< orphan*/  GLFW_INVALID_VALUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,double,double) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,double,double) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(GLFWwindow* handle, double xpos, double ypos)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;
    FUNC4(window != NULL);

    FUNC0();

    if (xpos != xpos || xpos < -DBL_MAX || xpos > DBL_MAX ||
        ypos != ypos || ypos < -DBL_MAX || ypos > DBL_MAX)
    {
        FUNC1(GLFW_INVALID_VALUE,
                        "Invalid cursor position %f %f",
                        xpos, ypos);
        return;
    }

    if (!FUNC3(window))
        return;

    if (window->cursorMode == GLFW_CURSOR_DISABLED)
    {
        // Only update the accumulated position if the cursor is disabled
        window->virtualCursorPosX = xpos;
        window->virtualCursorPosY = ypos;
    }
    else
    {
        // Update system cursor position
        FUNC2(window, xpos, ypos);
    }
}