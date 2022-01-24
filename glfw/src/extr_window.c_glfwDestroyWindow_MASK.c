#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* next; int /*<<< orphan*/  callbacks; } ;
typedef  TYPE_1__ _GLFWwindow ;
struct TYPE_7__ {TYPE_1__* windowListHead; int /*<<< orphan*/  contextSlot; } ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_5__ _glfw ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC6(GLFWwindow* handle)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;

    FUNC0();

    // Allow closing of NULL (to match the behavior of free)
    if (window == NULL)
        return;

    // Clear all callbacks to avoid exposing a half torn-down window object
    FUNC5(&window->callbacks, 0, sizeof(window->callbacks));

    // The window's context must not be current on another thread when the
    // window is destroyed
    if (window == FUNC2(&_glfw.contextSlot))
        FUNC4(NULL);

    FUNC1(window);

    // Unlink window from global linked list
    {
        _GLFWwindow** prev = &_glfw.windowListHead;

        while (*prev != window)
            prev = &((*prev)->next);

        *prev = window->next;
    }

    FUNC3(window);
}