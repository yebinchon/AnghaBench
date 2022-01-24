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
struct TYPE_3__ {int /*<<< orphan*/  leader; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ i3Window ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XCB_NONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(i3Window *win, xcb_get_property_reply_t *prop) {
    if (prop == NULL || FUNC4(prop) == 0) {
        FUNC0("CLIENT_LEADER not set on window 0x%08x.\n", win->id);
        win->leader = XCB_NONE;
        FUNC1(prop);
        return;
    }

    xcb_window_t *leader = FUNC3(prop);
    if (leader == NULL) {
        FUNC2(prop);
        return;
    }

    FUNC0("Client leader changed to %08x\n", *leader);

    win->leader = *leader;

    FUNC2(prop);
}