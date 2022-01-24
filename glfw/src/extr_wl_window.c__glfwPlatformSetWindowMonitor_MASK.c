#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ toplevel; } ;
struct TYPE_13__ {TYPE_1__ xdg; } ;
struct TYPE_15__ {TYPE_2__ wl; } ;
typedef  TYPE_4__ _GLFWwindow ;
typedef  int /*<<< orphan*/  _GLFWmonitor ;
struct TYPE_14__ {int /*<<< orphan*/  decorationManager; } ;
struct TYPE_11__ {TYPE_3__ wl; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_FALSE ; 
 TYPE_10__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5(_GLFWwindow* window,
                                   _GLFWmonitor* monitor,
                                   int xpos, int ypos,
                                   int width, int height,
                                   int refreshRate)
{
    if (monitor)
    {
        FUNC2(window, monitor, refreshRate);
    }
    else
    {
        if (window->wl.xdg.toplevel)
            FUNC4(window->wl.xdg.toplevel);
        FUNC3(window, GLFW_FALSE);
        if (!_glfw.wl.decorationManager)
            FUNC1(window);
    }
    FUNC0(window, monitor);
}