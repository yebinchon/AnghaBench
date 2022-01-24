#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  void* xcb_window_t ;
typedef  int /*<<< orphan*/  xcb_void_cookie_t ;
typedef  void* xcb_visualid_t ;
struct TYPE_11__ {int /*<<< orphan*/  error_code; } ;
typedef  TYPE_3__ xcb_generic_error_t ;
typedef  void* xcb_cursor_t ;
typedef  int /*<<< orphan*/  xcb_connection_t ;
typedef  void* uint32_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_9__ {int /*<<< orphan*/  id; } ;
struct TYPE_10__ {TYPE_1__ xcb; } ;
struct TYPE_12__ {TYPE_2__ specific; } ;
typedef  TYPE_4__ i3Font ;
typedef  enum xcursor_cursor_t { ____Placeholder_xcursor_cursor_t } xcursor_cursor_t ;
struct TYPE_13__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_5__ Rect ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 void* XCB_COPY_FROM_PARENT ; 
 void* XCB_CW_CURSOR ; 
 scalar_t__ XCB_WINDOW_CLASS_INPUT_ONLY ; 
 TYPE_4__ FUNC1 (char*,int) ; 
 int /*<<< orphan*/  root ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,void*,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,void*,void*,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void*) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC9 (int) ; 
 int FUNC10 (int) ; 
 scalar_t__ xcursor_supported ; 

xcb_window_t FUNC11(xcb_connection_t *conn, Rect dims,
                           uint16_t depth, xcb_visualid_t visual, uint16_t window_class,
                           enum xcursor_cursor_t cursor, bool map, uint32_t mask, uint32_t *values) {
    xcb_window_t result = FUNC6(conn);

    /* If the window class is XCB_WINDOW_CLASS_INPUT_ONLY, we copy depth and
     * visual id from the parent window. */
    if (window_class == XCB_WINDOW_CLASS_INPUT_ONLY) {
        depth = XCB_COPY_FROM_PARENT;
        visual = XCB_COPY_FROM_PARENT;
    }

    xcb_void_cookie_t gc_cookie = FUNC4(conn,
                                                    depth,
                                                    result,                                  /* the window id */
                                                    root,                                    /* parent == root */
                                                    dims.x, dims.y, dims.width, dims.height, /* dimensions */
                                                    0,                                       /* border = 0, we draw our own */
                                                    window_class,
                                                    visual,
                                                    mask,
                                                    values);

    xcb_generic_error_t *error = FUNC8(conn, gc_cookie);
    if (error != NULL) {
        FUNC0("Could not create window. Error code: %d.\n", error->error_code);
    }

    /* Set the cursor */
    if (xcursor_supported) {
        mask = XCB_CW_CURSOR;
        values[0] = FUNC9(cursor);
        FUNC2(conn, result, mask, values);
    } else {
        xcb_cursor_t cursor_id = FUNC6(conn);
        i3Font cursor_font = FUNC1("cursor", false);
        int xcb_cursor = FUNC10(cursor);
        FUNC3(conn, cursor_id, cursor_font.specific.xcb.id,
                                cursor_font.specific.xcb.id, xcb_cursor, xcb_cursor + 1, 0, 0, 0,
                                65535, 65535, 65535);
        FUNC2(conn, result, XCB_CW_CURSOR, &cursor_id);
        FUNC5(conn, cursor_id);
    }

    /* Map the window (= make it visible) */
    if (map)
        FUNC7(conn, result);

    return result;
}