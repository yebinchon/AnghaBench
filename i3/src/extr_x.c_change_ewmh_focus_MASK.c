#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ xcb_window_t ;

/* Variables and functions */
 scalar_t__ XCB_WINDOW_NONE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC2(xcb_window_t new_focus, xcb_window_t old_focus) {
    if (new_focus == old_focus) {
        return;
    }

    FUNC0(new_focus);

    if (new_focus != XCB_WINDOW_NONE) {
        FUNC1(new_focus, true);
    }

    if (old_focus != XCB_WINDOW_NONE) {
        FUNC1(old_focus, false);
    }
}