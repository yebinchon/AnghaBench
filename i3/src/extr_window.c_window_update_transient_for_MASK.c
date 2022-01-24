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
typedef  int /*<<< orphan*/  xcb_window_t ;
typedef  int /*<<< orphan*/  xcb_get_property_reply_t ;
struct TYPE_3__ {int /*<<< orphan*/  transient_for; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ i3Window ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XCB_NONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5(i3Window *win, xcb_get_property_reply_t *prop) {
    if (prop == NULL || FUNC3(prop) == 0) {
        FUNC0("TRANSIENT_FOR not set on window 0x%08x.\n", win->id);
        win->transient_for = XCB_NONE;
        FUNC1(prop);
        return;
    }

    xcb_window_t transient_for;
    if (!FUNC4(&transient_for, prop)) {
        FUNC2(prop);
        return;
    }

    FUNC0("Transient for changed to 0x%08x (window 0x%08x)\n", transient_for, win->id);

    win->transient_for = transient_for;

    FUNC2(prop);
}