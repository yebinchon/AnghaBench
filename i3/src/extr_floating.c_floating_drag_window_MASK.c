#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_button_press_event_t ;
typedef  scalar_t__ drag_result_t ;
struct TYPE_6__ {scalar_t__ scratchpad_state; int /*<<< orphan*/  rect; } ;
typedef  int /*<<< orphan*/  Rect ;
typedef  TYPE_1__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ DRAG_REVERT ; 
 scalar_t__ SCRATCHPAD_CHANGED ; 
 scalar_t__ SCRATCHPAD_FRESH ; 
 int /*<<< orphan*/  XCB_NONE ; 
 int /*<<< orphan*/  XCURSOR_CURSOR_MOVE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  drag_window_callback ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(Con *con, const xcb_button_press_event_t *event, bool use_threshold) {
    FUNC0("floating_drag_window\n");

    /* Push changes before dragging, so that the window gets raised now and not
     * after the user releases the mouse button */
    FUNC4();

    /* Store the initial rect in case of user revert/cancel */
    Rect initial_rect = con->rect;

    /* Drag the window */
    drag_result_t drag_result = FUNC2(con, event, XCB_NONE, XCURSOR_CURSOR_MOVE, use_threshold, drag_window_callback, NULL);

    if (!FUNC1(con)) {
        FUNC0("The container has been closed in the meantime.\n");
        return;
    }

    /* If the user cancelled, undo the changes. */
    if (drag_result == DRAG_REVERT) {
        FUNC3(con, initial_rect);
        return;
    }

    /* If this is a scratchpad window, don't auto center it from now on. */
    if (con->scratchpad_state == SCRATCHPAD_FRESH)
        con->scratchpad_state = SCRATCHPAD_CHANGED;

    FUNC4();
}