#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * handle; int /*<<< orphan*/ * dc; } ;
struct TYPE_8__ {TYPE_1__ wgl; } ;
struct TYPE_9__ {TYPE_2__ context; } ;
typedef  TYPE_3__ _GLFWwindow ;
struct TYPE_10__ {int /*<<< orphan*/  contextSlot; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 TYPE_6__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(_GLFWwindow* window)
{
    if (window)
    {
        if (FUNC2(window->context.wgl.dc, window->context.wgl.handle))
            FUNC1(&_glfw.contextSlot, window);
        else
        {
            FUNC0(GLFW_PLATFORM_ERROR,
                                 "WGL: Failed to make context current");
            FUNC1(&_glfw.contextSlot, NULL);
        }
    }
    else
    {
        if (!FUNC2(NULL, NULL))
        {
            FUNC0(GLFW_PLATFORM_ERROR,
                                 "WGL: Failed to clear current context");
        }

        FUNC1(&_glfw.contextSlot, NULL);
    }
}