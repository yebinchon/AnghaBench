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
typedef  int /*<<< orphan*/  xcb_window_t ;
typedef  int /*<<< orphan*/  xcb_get_property_reply_t ;
typedef  int /*<<< orphan*/  xcb_connection_t ;
typedef  int /*<<< orphan*/  xcb_atom_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {int /*<<< orphan*/  window; } ;
typedef  TYPE_1__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC7(void *data, xcb_connection_t *conn, uint8_t state, xcb_window_t window,
                                xcb_atom_t name, xcb_get_property_reply_t *reply) {
    Con *con = FUNC2(window);
    if (con == NULL) {
        FUNC0("Received WM_NORMAL_HINTS for unknown client\n");
        return false;
    }

    bool changed = FUNC6(con->window, reply, NULL);

    if (changed) {
        Con *floating = FUNC3(con);
        if (floating) {
            FUNC4(con, false);
            FUNC5();
        }
    }

    FUNC1(reply);
    return true;
}