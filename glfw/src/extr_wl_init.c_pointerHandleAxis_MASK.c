#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wl_fixed_t ;
typedef  scalar_t__ uint32_t ;
struct wl_pointer {int dummy; } ;
typedef  int /*<<< orphan*/  _GLFWwindow ;
struct TYPE_3__ {int /*<<< orphan*/ * pointerFocus; } ;
struct TYPE_4__ {TYPE_1__ wl; } ;

/* Variables and functions */
 scalar_t__ WL_POINTER_AXIS_HORIZONTAL_SCROLL ; 
 scalar_t__ WL_POINTER_AXIS_VERTICAL_SCROLL ; 
 TYPE_2__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,double,double) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 double const FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void* data,
                              struct wl_pointer* pointer,
                              uint32_t time,
                              uint32_t axis,
                              wl_fixed_t value)
{
    _GLFWwindow* window = _glfw.wl.pointerFocus;
    double x = 0.0, y = 0.0;
    // Wayland scroll events are in pointer motion coordinate space (think two
    // finger scroll).  The factor 10 is commonly used to convert to "scroll
    // step means 1.0.
    const double scrollFactor = 1.0 / 10.0;

    if (!window)
        return;

    FUNC1(axis == WL_POINTER_AXIS_HORIZONTAL_SCROLL ||
           axis == WL_POINTER_AXIS_VERTICAL_SCROLL);

    if (axis == WL_POINTER_AXIS_HORIZONTAL_SCROLL)
        x = FUNC2(value) * scrollFactor;
    else if (axis == WL_POINTER_AXIS_VERTICAL_SCROLL)
        y = FUNC2(value) * scrollFactor;

    FUNC0(window, x, y);
}