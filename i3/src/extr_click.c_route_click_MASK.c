#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_37__   TYPE_4__ ;
typedef  struct TYPE_36__   TYPE_3__ ;
typedef  struct TYPE_35__   TYPE_2__ ;
typedef  struct TYPE_34__   TYPE_1__ ;
typedef  struct TYPE_33__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_generic_event_t ;
struct TYPE_35__ {scalar_t__ detail; scalar_t__ response_type; int state; int /*<<< orphan*/  time; } ;
typedef  TYPE_2__ xcb_button_press_event_t ;
typedef  int /*<<< orphan*/  position_t ;
typedef  int /*<<< orphan*/  click_destination_t ;
struct TYPE_37__ {scalar_t__ border; scalar_t__ whole_window; int /*<<< orphan*/  exclude_titlebar; } ;
struct TYPE_36__ {TYPE_1__* parent; int /*<<< orphan*/  name; int /*<<< orphan*/  type; } ;
struct TYPE_34__ {scalar_t__ type; scalar_t__ layout; int /*<<< orphan*/  focus_head; } ;
struct TYPE_33__ {int /*<<< orphan*/  focus_head; } ;
typedef  TYPE_3__ Con ;
typedef  int /*<<< orphan*/  CommandResult ;
typedef  TYPE_4__ Binding ;

/* Variables and functions */
 int /*<<< orphan*/  AFTER ; 
 int /*<<< orphan*/  BEFORE ; 
 int /*<<< orphan*/  const CLICK_BORDER ; 
 int /*<<< orphan*/  const CLICK_DECORATION ; 
 int /*<<< orphan*/  const CLICK_INSIDE ; 
 scalar_t__ CT_DOCKAREA ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ L_STACKED ; 
 scalar_t__ L_TABBED ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XCB_ALLOW_ASYNC_POINTER ; 
 int /*<<< orphan*/  XCB_ALLOW_REPLAY_POINTER ; 
 scalar_t__ XCB_BUTTON_CLICK_LEFT ; 
 scalar_t__ XCB_BUTTON_CLICK_RIGHT ; 
 scalar_t__ XCB_BUTTON_RELEASE ; 
 scalar_t__ XCB_BUTTON_SCROLL_DOWN ; 
 scalar_t__ XCB_BUTTON_SCROLL_LEFT ; 
 scalar_t__ XCB_BUTTON_SCROLL_RIGHT ; 
 scalar_t__ XCB_BUTTON_SCROLL_UP ; 
 int XCB_KEY_BUT_MASK_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_3__* FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 TYPE_3__* FUNC7 (TYPE_3__*) ; 
 TYPE_3__* FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,TYPE_2__*,int) ; 
 scalar_t__ FUNC10 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int const,TYPE_2__*) ; 
 TYPE_3__* focused ; 
 TYPE_4__* FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC13 (TYPE_3__*,int /*<<< orphan*/  const) ; 
 TYPE_12__* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (TYPE_4__*,TYPE_3__*) ; 
 scalar_t__ FUNC16 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(Con *con, xcb_button_press_event_t *event, const bool mod_pressed, const click_destination_t dest) {
    FUNC0("--> click properties: mod = %d, destination = %d\n", mod_pressed, dest);
    FUNC0("--> OUTCOME = %p\n", con);
    FUNC0("type = %d, name = %s\n", con->type, con->name);

    /* don’t handle dockarea cons, they must not be focused */
    if (con->parent->type == CT_DOCKAREA)
        goto done;

    const bool is_left_or_right_click = (event->detail == XCB_BUTTON_CLICK_LEFT ||
                                         event->detail == XCB_BUTTON_CLICK_RIGHT);

    /* if the user has bound an action to this click, it should override the
     * default behavior. */
    if (dest == CLICK_DECORATION || dest == CLICK_INSIDE || dest == CLICK_BORDER) {
        Binding *bind = FUNC12((xcb_generic_event_t *)event);

        if (bind != NULL && ((dest == CLICK_DECORATION && !bind->exclude_titlebar) ||
                             (dest == CLICK_INSIDE && bind->whole_window) ||
                             (dest == CLICK_BORDER && bind->border))) {
            CommandResult *result = FUNC15(bind, con);

            /* ASYNC_POINTER eats the event */
            FUNC19(conn, XCB_ALLOW_ASYNC_POINTER, event->time);
            FUNC20(conn);

            FUNC2(result);
            return 0;
        }
    }

    /* There is no default behavior for button release events so we are done. */
    if (event->response_type == XCB_BUTTON_RELEASE) {
        goto done;
    }

    /* Any click in a workspace should focus that workspace. If the
     * workspace is on another output we need to do a workspace_show in
     * order for i3bar (and others) to notice the change in workspace. */
    Con *ws = FUNC7(con);
    Con *focused_workspace = FUNC7(focused);

    if (!ws) {
        ws = FUNC1(&(FUNC14(FUNC6(con))->focus_head));
        if (!ws)
            goto done;
    }

    if (ws != focused_workspace)
        FUNC18(ws);

    /* get the floating con */
    Con *floatingcon = FUNC8(con);
    const bool proportional = (event->state & XCB_KEY_BUT_MASK_SHIFT) == XCB_KEY_BUT_MASK_SHIFT;
    const bool in_stacked = (con->parent->layout == L_STACKED || con->parent->layout == L_TABBED);
    const bool was_focused = focused == con;

    /* 1: see if the user scrolled on the decoration of a stacked/tabbed con */
    if (in_stacked &&
        dest == CLICK_DECORATION &&
        (event->detail == XCB_BUTTON_SCROLL_UP ||
         event->detail == XCB_BUTTON_SCROLL_DOWN ||
         event->detail == XCB_BUTTON_SCROLL_LEFT ||
         event->detail == XCB_BUTTON_SCROLL_RIGHT)) {
        FUNC0("Scrolling on a window decoration\n");
        /* Use the focused child of the tabbed / stacked container, not the
         * container the user scrolled on. */
        Con *current = FUNC1(&(con->parent->focus_head));
        const position_t direction =
            (event->detail == XCB_BUTTON_SCROLL_UP || event->detail == XCB_BUTTON_SCROLL_LEFT) ? BEFORE : AFTER;
        Con *next = FUNC13(current, direction);
        FUNC3(FUNC4(next ? next : current));

        goto done;
    }

    /* 2: focus this con. */
    FUNC3(con);

    /* 3: For floating containers, we also want to raise them on click.
     * We will skip handling events on floating cons in fullscreen mode */
    Con *fs = FUNC5(ws);
    if (floatingcon != NULL && fs != con) {
        /* 4: floating_modifier plus left mouse button drags */
        if (mod_pressed && event->detail == XCB_BUTTON_CLICK_LEFT) {
            FUNC9(floatingcon, event, false);
            return 1;
        }

        /*  5: resize (floating) if this was a (left or right) click on the
         * left/right/bottom border, or a right click on the decoration.
         * also try resizing (tiling) if it was a click on the top */
        if (mod_pressed && event->detail == XCB_BUTTON_CLICK_RIGHT) {
            FUNC0("floating resize due to floatingmodifier\n");
            FUNC11(floatingcon, proportional, event);
            return 1;
        }

        if (!in_stacked && dest == CLICK_DECORATION &&
            is_left_or_right_click) {
            /* try tiling resize, but continue if it doesn’t work */
            FUNC0("tiling resize with fallback\n");
            if (FUNC16(con, event, dest, !was_focused))
                goto done;
        }

        if (dest == CLICK_DECORATION && event->detail == XCB_BUTTON_CLICK_RIGHT) {
            FUNC0("floating resize due to decoration right click\n");
            FUNC11(floatingcon, proportional, event);
            return 1;
        }

        if (dest == CLICK_BORDER && is_left_or_right_click) {
            FUNC0("floating resize due to border click\n");
            FUNC11(floatingcon, proportional, event);
            return 1;
        }

        /* 6: dragging, if this was a click on a decoration (which did not lead
         * to a resize) */
        if (dest == CLICK_DECORATION && event->detail == XCB_BUTTON_CLICK_LEFT) {
            FUNC9(floatingcon, event, !was_focused);
            return 1;
        }

        goto done;
    }

    /* 7: floating modifier pressed, initiate a resize */
    if (dest == CLICK_INSIDE && mod_pressed && event->detail == XCB_BUTTON_CLICK_RIGHT) {
        if (FUNC10(con, event))
            return 1;
    }
    /* 8: otherwise, check for border/decoration clicks and resize */
    else if ((dest == CLICK_BORDER || dest == CLICK_DECORATION) &&
             is_left_or_right_click) {
        FUNC0("Trying to resize (tiling)\n");
        /* Since we updated the tree (con_activate() above), we need to
         * re-render the tree before returning to the event loop (drag_pointer()
         * inside tiling_resize() runs its own event-loop). */
        FUNC17();
        FUNC16(con, event, dest, dest == CLICK_DECORATION && !was_focused);
    }

done:
    FUNC19(conn, XCB_ALLOW_REPLAY_POINTER, event->time);
    FUNC20(conn);
    FUNC17();

    return 0;
}