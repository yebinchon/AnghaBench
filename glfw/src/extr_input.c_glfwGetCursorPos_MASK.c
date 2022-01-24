#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ cursorMode; double virtualCursorPosX; double virtualCursorPosY; } ;
typedef  TYPE_1__ _GLFWwindow ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 scalar_t__ GLFW_CURSOR_DISABLED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,double*,double*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(GLFWwindow* handle, double* xpos, double* ypos)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;
    FUNC2(window != NULL);

    if (xpos)
        *xpos = 0;
    if (ypos)
        *ypos = 0;

    FUNC0();

    if (window->cursorMode == GLFW_CURSOR_DISABLED)
    {
        if (xpos)
            *xpos = window->virtualCursorPosX;
        if (ypos)
            *ypos = window->virtualCursorPosY;
    }
    else
        FUNC1(window, xpos, ypos);
}