#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wl_fixed_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct zwp_relative_pointer_v1 {int dummy; } ;
struct TYPE_3__ {double virtualCursorPosX; double virtualCursorPosY; scalar_t__ cursorMode; scalar_t__ rawMouseMotion; } ;
typedef  TYPE_1__ _GLFWwindow ;

/* Variables and functions */
 scalar_t__ GLFW_CURSOR_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,double,double) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void* data,
                                                struct zwp_relative_pointer_v1* pointer,
                                                uint32_t timeHi,
                                                uint32_t timeLo,
                                                wl_fixed_t dx,
                                                wl_fixed_t dy,
                                                wl_fixed_t dxUnaccel,
                                                wl_fixed_t dyUnaccel)
{
    _GLFWwindow* window = data;
    double xpos = window->virtualCursorPosX;
    double ypos = window->virtualCursorPosY;

    if (window->cursorMode != GLFW_CURSOR_DISABLED)
        return;

    if (window->rawMouseMotion)
    {
        xpos += FUNC1(dxUnaccel);
        ypos += FUNC1(dyUnaccel);
    }
    else
    {
        xpos += FUNC1(dx);
        ypos += FUNC1(dy);
    }

    FUNC0(window, xpos, ypos);
}