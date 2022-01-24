#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  _GLFWwindow ;
struct TYPE_3__ {int /*<<< orphan*/  display; int /*<<< orphan*/ * disabledCursorWindow; } ;
struct TYPE_4__ {TYPE_1__ x11; } ;

/* Variables and functions */
 int GLFW_CURSOR_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__ _glfw ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(_GLFWwindow* window, int mode)
{
    if (mode == GLFW_CURSOR_DISABLED)
    {
        if (FUNC1(window))
            FUNC2(window);
    }
    else if (_glfw.x11.disabledCursorWindow == window)
        FUNC3(window);
    else
        FUNC4(window);

    FUNC0(_glfw.x11.display);
}