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
struct TYPE_8__ {int /*<<< orphan*/  handle; } ;
struct TYPE_9__ {TYPE_2__ x11; } ;
typedef  TYPE_3__ _GLFWwindow ;
struct TYPE_7__ {int /*<<< orphan*/  display; scalar_t__ NET_ACTIVE_WINDOW; } ;
struct TYPE_10__ {TYPE_1__ x11; } ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentTime ; 
 int /*<<< orphan*/  RevertToParent ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__ _glfw ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(_GLFWwindow* window)
{
    if (_glfw.x11.NET_ACTIVE_WINDOW)
        FUNC3(window, _glfw.x11.NET_ACTIVE_WINDOW, 1, 0, 0, 0, 0);
    else
    {
        FUNC1(_glfw.x11.display, window->x11.handle);
        FUNC2(_glfw.x11.display, window->x11.handle,
                       RevertToParent, CurrentTime);
    }

    FUNC0(_glfw.x11.display);
}