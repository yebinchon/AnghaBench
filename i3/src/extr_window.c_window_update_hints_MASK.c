#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int flags; int /*<<< orphan*/  input; } ;
typedef  TYPE_1__ xcb_icccm_wm_hints_t ;
typedef  int /*<<< orphan*/  xcb_get_property_reply_t ;
struct TYPE_7__ {int doesnt_accept_focus; } ;
typedef  TYPE_2__ i3Window ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int XCB_ICCCM_WM_HINT_INPUT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 

void FUNC7(i3Window *win, xcb_get_property_reply_t *prop, bool *urgency_hint) {
    if (urgency_hint != NULL)
        *urgency_hint = false;

    if (prop == NULL || FUNC4(prop) == 0) {
        FUNC0("WM_HINTS not set.\n");
        FUNC1(prop);
        return;
    }

    xcb_icccm_wm_hints_t hints;

    if (!FUNC5(&hints, prop)) {
        FUNC0("Could not get WM_HINTS\n");
        FUNC3(prop);
        return;
    }

    if (hints.flags & XCB_ICCCM_WM_HINT_INPUT) {
        win->doesnt_accept_focus = !hints.input;
        FUNC2("WM_HINTS.input changed to \"%d\"\n", hints.input);
    }

    if (urgency_hint != NULL)
        *urgency_hint = (FUNC6(&hints) != 0);

    FUNC3(prop);
}