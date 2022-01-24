#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ client; int /*<<< orphan*/  (* swapBuffers ) (TYPE_2__*) ;} ;
struct TYPE_5__ {TYPE_1__ context; } ;
typedef  TYPE_2__ _GLFWwindow ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 scalar_t__ GLFW_NO_API ; 
 int /*<<< orphan*/  GLFW_NO_WINDOW_CONTEXT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

void FUNC4(GLFWwindow* handle)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;
    FUNC2(window != NULL);

    FUNC0();

    if (window->context.client == GLFW_NO_API)
    {
        FUNC1(GLFW_NO_WINDOW_CONTEXT,
                        "Cannot swap buffers of a window that has no OpenGL or OpenGL ES context");
        return;
    }

    window->context.swapBuffers(window);
}