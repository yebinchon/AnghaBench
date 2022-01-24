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
struct TYPE_5__ {scalar_t__ toplevel; } ;
struct TYPE_6__ {int /*<<< orphan*/  surface; TYPE_1__ xdg; } ;
struct TYPE_7__ {TYPE_2__ wl; } ;
typedef  TYPE_3__ _GLFWwindow ;

/* Variables and functions */
 int GLFW_DONT_CARE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int) ; 

void FUNC3(_GLFWwindow* window,
                                      int minwidth, int minheight,
                                      int maxwidth, int maxheight)
{
    if (window->wl.xdg.toplevel)
    {
        if (minwidth == GLFW_DONT_CARE || minheight == GLFW_DONT_CARE)
            minwidth = minheight = 0;
        if (maxwidth == GLFW_DONT_CARE || maxheight == GLFW_DONT_CARE)
            maxwidth = maxheight = 0;
        FUNC2(window->wl.xdg.toplevel, minwidth, minheight);
        FUNC1(window->wl.xdg.toplevel, maxwidth, maxheight);
        FUNC0(window->wl.surface);
    }
}