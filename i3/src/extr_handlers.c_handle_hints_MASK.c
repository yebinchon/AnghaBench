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
typedef  int /*<<< orphan*/  xcb_window_t ;
typedef  int /*<<< orphan*/  xcb_get_property_reply_t ;
typedef  int /*<<< orphan*/  xcb_connection_t ;
typedef  int /*<<< orphan*/  xcb_atom_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  window; } ;
typedef  TYPE_1__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(void *data, xcb_connection_t *conn, uint8_t state, xcb_window_t window,
                         xcb_atom_t name, xcb_get_property_reply_t *reply) {
    Con *con = FUNC1(window);
    if (con == NULL) {
        FUNC0("Received WM_HINTS for unknown client\n");
        return false;
    }

    bool urgency_hint;
    if (reply == NULL)
        reply = FUNC5(conn, FUNC6(conn, window), NULL);
    FUNC4(con->window, reply, &urgency_hint);
    FUNC2(con, urgency_hint);
    FUNC3();

    return true;
}