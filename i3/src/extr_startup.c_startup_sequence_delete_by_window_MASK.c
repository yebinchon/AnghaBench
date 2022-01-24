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
typedef  int /*<<< orphan*/  xcb_get_property_cookie_t ;
struct Startup_Sequence {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ i3Window ;

/* Variables and functions */
 int /*<<< orphan*/  A__NET_STARTUP_ID ; 
 int /*<<< orphan*/  XCB_GET_PROPERTY_TYPE_ANY ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  FUNC0 (struct Startup_Sequence*) ; 
 struct Startup_Sequence* FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(i3Window *win) {
    struct Startup_Sequence *sequence;
    xcb_get_property_cookie_t cookie;
    xcb_get_property_reply_t *startup_id_reply;

    cookie = FUNC2(conn, false, win->id, A__NET_STARTUP_ID,
                              XCB_GET_PROPERTY_TYPE_ANY, 0, 512);
    startup_id_reply = FUNC3(conn, cookie, NULL);

    sequence = FUNC1(win, startup_id_reply, true);
    if (sequence != NULL) {
        FUNC0(sequence);
    }
}