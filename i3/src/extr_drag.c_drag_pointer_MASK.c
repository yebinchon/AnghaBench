#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_window_t ;
struct TYPE_15__ {int /*<<< orphan*/  error_code; } ;
typedef  TYPE_1__ xcb_grab_pointer_reply_t ;
typedef  int /*<<< orphan*/  xcb_grab_pointer_cookie_t ;
typedef  TYPE_1__ xcb_grab_keyboard_reply_t ;
typedef  int /*<<< orphan*/  xcb_grab_keyboard_cookie_t ;
typedef  TYPE_1__ xcb_generic_error_t ;
typedef  int /*<<< orphan*/  xcb_cursor_t ;
typedef  int /*<<< orphan*/  xcb_button_press_event_t ;
struct TYPE_16__ {struct drag_x11_cb* data; } ;
struct drag_x11_cb {int threshold_exceeded; void const* extra; int /*<<< orphan*/  result; int /*<<< orphan*/  old_rect; TYPE_4__ prepare; int /*<<< orphan*/  xcursor; int /*<<< orphan*/  callback; int /*<<< orphan*/  const* event; TYPE_5__* con; } ;
typedef  TYPE_4__ ev_prepare ;
typedef  int /*<<< orphan*/  drag_result_t ;
typedef  int /*<<< orphan*/  callback_t ;
struct TYPE_17__ {int /*<<< orphan*/  rect; } ;
typedef  TYPE_5__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  DRAGGING ; 
 int /*<<< orphan*/  DRAG_ABORT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XCB_CURRENT_TIME ; 
 int XCB_EVENT_MASK_BUTTON_RELEASE ; 
 int XCB_EVENT_MASK_POINTER_MOTION ; 
 int /*<<< orphan*/  XCB_GRAB_MODE_ASYNC ; 
 int /*<<< orphan*/  XCB_NONE ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  main_loop ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  root ; 
 int /*<<< orphan*/  xcb_drag_prepare_cb ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 scalar_t__ xcursor_supported ; 

drag_result_t FUNC15(Con *con, const xcb_button_press_event_t *event,
                           xcb_window_t confine_to, int cursor,
                           bool use_threshold, callback_t callback,
                           const void *extra) {
    xcb_cursor_t xcursor = (cursor && xcursor_supported) ? FUNC14(cursor) : XCB_NONE;

    /* Grab the pointer */
    xcb_grab_pointer_cookie_t cookie;
    xcb_grab_pointer_reply_t *reply;
    xcb_generic_error_t *error;

    cookie = FUNC10(conn,
                              false,                                                         /* get all pointer events specified by the following mask */
                              root,                                                          /* grab the root window */
                              XCB_EVENT_MASK_BUTTON_RELEASE | XCB_EVENT_MASK_POINTER_MOTION, /* which events to let through */
                              XCB_GRAB_MODE_ASYNC,                                           /* pointer events should continue as normal */
                              XCB_GRAB_MODE_ASYNC,                                           /* keyboard mode */
                              confine_to,                                                    /* confine_to = in which window should the cursor stay */
                              use_threshold ? XCB_NONE : xcursor,                            /* possibly display a special cursor */
                              XCB_CURRENT_TIME);

    if ((reply = FUNC11(conn, cookie, &error)) == NULL) {
        FUNC0("Could not grab pointer (error_code = %d)\n", error->error_code);
        FUNC5(error);
        return DRAG_ABORT;
    }

    FUNC5(reply);

    /* Grab the keyboard */
    xcb_grab_keyboard_cookie_t keyb_cookie;
    xcb_grab_keyboard_reply_t *keyb_reply;

    keyb_cookie = FUNC8(conn,
                                    false, /* get all keyboard events */
                                    root,  /* grab the root window */
                                    XCB_CURRENT_TIME,
                                    XCB_GRAB_MODE_ASYNC, /* continue processing pointer events as normal */
                                    XCB_GRAB_MODE_ASYNC  /* keyboard mode */
    );

    if ((keyb_reply = FUNC9(conn, keyb_cookie, &error)) == NULL) {
        FUNC0("Could not grab keyboard (error_code = %d)\n", error->error_code);
        FUNC5(error);
        FUNC13(conn, XCB_CURRENT_TIME);
        return DRAG_ABORT;
    }

    FUNC5(keyb_reply);

    /* Go into our own event loop */
    struct drag_x11_cb loop = {
        .result = DRAGGING,
        .con = con,
        .event = event,
        .callback = callback,
        .threshold_exceeded = !use_threshold,
        .xcursor = xcursor,
        .extra = extra,
    };
    ev_prepare *prepare = &loop.prepare;
    if (con)
        loop.old_rect = con->rect;
    FUNC2(prepare, xcb_drag_prepare_cb);
    prepare->data = &loop;
    FUNC6(false);
    FUNC3(main_loop, prepare);

    FUNC1(main_loop, 0);

    FUNC4(main_loop, prepare);
    FUNC6(true);

    FUNC12(conn, XCB_CURRENT_TIME);
    FUNC13(conn, XCB_CURRENT_TIME);
    FUNC7(conn);

    return loop.result;
}