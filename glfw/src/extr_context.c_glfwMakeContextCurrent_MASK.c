#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ client; scalar_t__ source; int /*<<< orphan*/  (* makeCurrent ) (TYPE_2__*) ;} ;
struct TYPE_8__ {TYPE_1__ context; } ;
typedef  TYPE_2__ _GLFWwindow ;
struct TYPE_9__ {int /*<<< orphan*/  contextSlot; } ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 scalar_t__ GLFW_NO_API ; 
 int /*<<< orphan*/  GLFW_NO_WINDOW_CONTEXT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_6__ _glfw ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void FUNC5(GLFWwindow* handle)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;
    _GLFWwindow* previous = FUNC2(&_glfw.contextSlot);

    FUNC0();

    if (window && window->context.client == GLFW_NO_API)
    {
        FUNC1(GLFW_NO_WINDOW_CONTEXT,
                        "Cannot make current with a window that has no OpenGL or OpenGL ES context");
        return;
    }

    if (previous)
    {
        if (!window || window->context.source != previous->context.source)
            previous->context.makeCurrent(NULL);
    }

    if (window)
        window->context.makeCurrent(window);
}