#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ event; scalar_t__ mode; scalar_t__ detail; } ;
typedef  TYPE_2__ xcb_focus_in_event_t ;
struct TYPE_10__ {TYPE_1__* parent; int /*<<< orphan*/  name; int /*<<< orphan*/ * window; } ;
struct TYPE_8__ {scalar_t__ type; } ;
typedef  TYPE_3__ Con ;

/* Variables and functions */
 scalar_t__ CT_DOCKAREA ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ XCB_NONE ; 
 scalar_t__ XCB_NOTIFY_DETAIL_POINTER ; 
 scalar_t__ XCB_NOTIFY_MODE_GRAB ; 
 scalar_t__ XCB_NOTIFY_MODE_UNGRAB ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_3__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  croot ; 
 int /*<<< orphan*/  focused ; 
 scalar_t__ focused_id ; 
 scalar_t__ root ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(xcb_focus_in_event_t *event) {
    FUNC0("focus change in, for window 0x%08x\n", event->event);

    if (event->event == root) {
        FUNC0("Received focus in for root window, refocusing the focused window.\n");
        FUNC3(focused);
        focused_id = XCB_NONE;
        FUNC6(croot);
    }

    Con *con;
    if ((con = FUNC2(event->event)) == NULL || con->window == NULL)
        return;
    FUNC0("That is con %p / %s\n", con, con->name);

    if (event->mode == XCB_NOTIFY_MODE_GRAB ||
        event->mode == XCB_NOTIFY_MODE_UNGRAB) {
        FUNC0("FocusIn event for grab/ungrab, ignoring\n");
        return;
    }

    if (event->detail == XCB_NOTIFY_DETAIL_POINTER) {
        FUNC0("notify detail is pointer, ignoring this event\n");
        return;
    }

    /* Floating windows should be refocused to ensure that they are on top of
     * other windows. */
    if (focused_id == event->event && !FUNC4(con)) {
        FUNC0("focus matches the currently focused window, not doing anything\n");
        return;
    }

    /* Skip dock clients, they cannot get the i3 focus. */
    if (con->parent->type == CT_DOCKAREA) {
        FUNC0("This is a dock client, not focusing.\n");
        return;
    }

    FUNC0("focus is different / refocusing floating window: updating decorations\n");

    FUNC1(con);

    /* We update focused_id because we don’t need to set focus again */
    focused_id = event->event;
    FUNC5();
}