#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_get_property_reply_t ;
typedef  scalar_t__ xcb_atom_t ;
struct TYPE_4__ {scalar_t__ window_type; } ;
typedef  TYPE_1__ i3Window ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 scalar_t__ XCB_NONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(i3Window *window, xcb_get_property_reply_t *reply) {
    xcb_atom_t new_type = FUNC4(reply);
    FUNC2(reply);
    if (new_type == XCB_NONE) {
        FUNC0("cannot read _NET_WM_WINDOW_TYPE from window.\n");
        return;
    }

    window->window_type = new_type;
    FUNC1("_NET_WM_WINDOW_TYPE changed to %i.\n", window->window_type);

    FUNC3(window);
}