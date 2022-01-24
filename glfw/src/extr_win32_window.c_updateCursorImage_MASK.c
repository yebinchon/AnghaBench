#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ cursorMode; TYPE_2__* cursor; } ;
typedef  TYPE_3__ _GLFWwindow ;
struct TYPE_5__ {int /*<<< orphan*/ * handle; } ;
struct TYPE_6__ {TYPE_1__ win32; } ;

/* Variables and functions */
 scalar_t__ GLFW_CURSOR_NORMAL ; 
 int /*<<< orphan*/  IDC_ARROW ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(_GLFWwindow* window)
{
    if (window->cursorMode == GLFW_CURSOR_NORMAL)
    {
        if (window->cursor)
            FUNC1(window->cursor->win32.handle);
        else
            FUNC1(FUNC0(NULL, IDC_ARROW));
    }
    else
        FUNC1(NULL);
}