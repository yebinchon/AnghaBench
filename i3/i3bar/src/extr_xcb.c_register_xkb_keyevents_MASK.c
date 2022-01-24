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
struct TYPE_3__ {int /*<<< orphan*/  first_event; int /*<<< orphan*/  present; } ;
typedef  TYPE_1__ xcb_query_extension_reply_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  XCB_XKB_EVENT_TYPE_STATE_NOTIFY ; 
 int /*<<< orphan*/  XCB_XKB_ID_USE_CORE_KBD ; 
 int /*<<< orphan*/  XCB_XKB_MAJOR_VERSION ; 
 int /*<<< orphan*/  XCB_XKB_MINOR_VERSION ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xcb_xkb_id ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xkb_base ; 

__attribute__((used)) static void FUNC6(void) {
    const xcb_query_extension_reply_t *extreply;
    extreply = FUNC3(conn, &xcb_xkb_id);
    if (!extreply->present) {
        FUNC1("xkb is not present on this server\n");
        FUNC2(EXIT_FAILURE);
    }
    FUNC0("initializing xcb-xkb\n");
    FUNC5(conn, XCB_XKB_MAJOR_VERSION, XCB_XKB_MINOR_VERSION);
    FUNC4(conn,
                          XCB_XKB_ID_USE_CORE_KBD,
                          XCB_XKB_EVENT_TYPE_STATE_NOTIFY,
                          0,
                          XCB_XKB_EVENT_TYPE_STATE_NOTIFY,
                          0xff,
                          0xff,
                          NULL);
    xkb_base = extreply->first_event;
}