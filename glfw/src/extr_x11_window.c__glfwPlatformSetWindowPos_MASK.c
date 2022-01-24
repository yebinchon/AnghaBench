#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  handle; } ;
struct TYPE_14__ {TYPE_2__ x11; } ;
typedef  TYPE_3__ _GLFWwindow ;
struct TYPE_15__ {scalar_t__ y; scalar_t__ x; int /*<<< orphan*/  flags; } ;
typedef  TYPE_4__ XSizeHints ;
struct TYPE_12__ {int /*<<< orphan*/  display; } ;
struct TYPE_16__ {TYPE_1__ x11; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPosition ; 
 TYPE_4__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 TYPE_7__ _glfw ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 

void FUNC7(_GLFWwindow* window, int xpos, int ypos)
{
    // HACK: Explicitly setting PPosition to any value causes some WMs, notably
    //       Compiz and Metacity, to honor the position of unmapped windows
    if (!FUNC6(window))
    {
        long supplied;
        XSizeHints* hints = FUNC0();

        if (FUNC3(_glfw.x11.display, window->x11.handle, hints, &supplied))
        {
            hints->flags |= PPosition;
            hints->x = hints->y = 0;

            FUNC5(_glfw.x11.display, window->x11.handle, hints);
        }

        FUNC2(hints);
    }

    FUNC4(_glfw.x11.display, window->x11.handle, xpos, ypos);
    FUNC1(_glfw.x11.display);
}