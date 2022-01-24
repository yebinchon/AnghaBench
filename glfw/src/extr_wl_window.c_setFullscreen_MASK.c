#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  serverSide; } ;
struct TYPE_11__ {scalar_t__ toplevel; } ;
struct TYPE_14__ {TYPE_3__ decorations; TYPE_1__ xdg; } ;
struct TYPE_15__ {TYPE_4__ wl; } ;
typedef  TYPE_5__ _GLFWwindow ;
struct TYPE_12__ {int /*<<< orphan*/  output; } ;
struct TYPE_16__ {TYPE_2__ wl; } ;
typedef  TYPE_6__ _GLFWmonitor ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(_GLFWwindow* window, _GLFWmonitor* monitor,
                          int refreshRate)
{
    if (window->wl.xdg.toplevel)
    {
        FUNC2(
            window->wl.xdg.toplevel,
            monitor->wl.output);
    }
    FUNC1(window, GLFW_TRUE);
    if (!window->wl.decorations.serverSide)
        FUNC0(window);
}