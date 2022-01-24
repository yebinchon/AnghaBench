#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_cursor_t ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
struct TYPE_6__ {TYPE_1__ xcb; } ;
struct TYPE_7__ {TYPE_2__ specific; } ;
typedef  TYPE_3__ i3Font ;

/* Variables and functions */
 int /*<<< orphan*/  XCB_CW_CURSOR ; 
 int /*<<< orphan*/  conn ; 
 TYPE_3__ FUNC0 (char*,int) ; 
 int /*<<< orphan*/  root ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 

void FUNC7(int cursor) {
    xcb_cursor_t cursor_id = FUNC5(conn);
    i3Font cursor_font = FUNC0("cursor", false);
    int xcb_cursor = FUNC6(cursor);
    FUNC2(conn, cursor_id, cursor_font.specific.xcb.id,
                            cursor_font.specific.xcb.id, xcb_cursor, xcb_cursor + 1, 0, 0, 0,
                            65535, 65535, 65535);
    FUNC1(conn, root, XCB_CW_CURSOR, &cursor_id);
    FUNC4(conn, cursor_id);
    FUNC3(conn);
}