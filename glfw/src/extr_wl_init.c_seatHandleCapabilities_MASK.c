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
struct wl_seat {int dummy; } ;
typedef  enum wl_seat_capability { ____Placeholder_wl_seat_capability } wl_seat_capability ;
struct TYPE_3__ {int /*<<< orphan*/ * keyboard; int /*<<< orphan*/ * pointer; } ;
struct TYPE_4__ {TYPE_1__ wl; } ;

/* Variables and functions */
 int WL_SEAT_CAPABILITY_KEYBOARD ; 
 int WL_SEAT_CAPABILITY_POINTER ; 
 TYPE_2__ _glfw ; 
 int /*<<< orphan*/  keyboardListener ; 
 int /*<<< orphan*/  pointerListener ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct wl_seat*) ; 
 int /*<<< orphan*/ * FUNC5 (struct wl_seat*) ; 

__attribute__((used)) static void FUNC6(void* data,
                                   struct wl_seat* seat,
                                   enum wl_seat_capability caps)
{
    if ((caps & WL_SEAT_CAPABILITY_POINTER) && !_glfw.wl.pointer)
    {
        _glfw.wl.pointer = FUNC5(seat);
        FUNC2(_glfw.wl.pointer, &pointerListener, NULL);
    }
    else if (!(caps & WL_SEAT_CAPABILITY_POINTER) && _glfw.wl.pointer)
    {
        FUNC3(_glfw.wl.pointer);
        _glfw.wl.pointer = NULL;
    }

    if ((caps & WL_SEAT_CAPABILITY_KEYBOARD) && !_glfw.wl.keyboard)
    {
        _glfw.wl.keyboard = FUNC4(seat);
        FUNC0(_glfw.wl.keyboard, &keyboardListener, NULL);
    }
    else if (!(caps & WL_SEAT_CAPABILITY_KEYBOARD) && _glfw.wl.keyboard)
    {
        FUNC1(_glfw.wl.keyboard);
        _glfw.wl.keyboard = NULL;
    }
}