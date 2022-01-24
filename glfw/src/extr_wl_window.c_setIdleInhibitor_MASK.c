#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * idleInhibitor; int /*<<< orphan*/  surface; } ;
struct TYPE_8__ {TYPE_1__ wl; } ;
typedef  TYPE_3__ _GLFWwindow ;
struct TYPE_7__ {scalar_t__ idleInhibitManager; } ;
struct TYPE_9__ {TYPE_2__ wl; } ;
typedef  scalar_t__ GLFWbool ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 TYPE_5__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(_GLFWwindow* window, GLFWbool enable)
{
    if (enable && !window->wl.idleInhibitor && _glfw.wl.idleInhibitManager)
    {
        window->wl.idleInhibitor =
            FUNC1(
                _glfw.wl.idleInhibitManager, window->wl.surface);
        if (!window->wl.idleInhibitor)
            FUNC0(GLFW_PLATFORM_ERROR,
                            "Wayland: Idle inhibitor creation failed");
    }
    else if (!enable && window->wl.idleInhibitor)
    {
        FUNC2(window->wl.idleInhibitor);
        window->wl.idleInhibitor = NULL;
    }
}