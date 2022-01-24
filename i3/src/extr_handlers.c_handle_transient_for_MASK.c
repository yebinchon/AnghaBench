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
typedef  int /*<<< orphan*/  xcb_window_t ;
typedef  int /*<<< orphan*/  xcb_get_property_reply_t ;
typedef  int /*<<< orphan*/  xcb_connection_t ;
typedef  int /*<<< orphan*/  xcb_atom_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/ * window; } ;
typedef  TYPE_1__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  XCB_ATOM_WINDOW ; 
 int /*<<< orphan*/  XCB_ATOM_WM_TRANSIENT_FOR ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC5(void *data, xcb_connection_t *conn, uint8_t state, xcb_window_t window,
                                 xcb_atom_t name, xcb_get_property_reply_t *prop) {
    Con *con;

    if ((con = FUNC1(window)) == NULL || con->window == NULL) {
        FUNC0("No such window\n");
        return false;
    }

    if (prop == NULL) {
        prop = FUNC3(conn, FUNC4(conn, false, window, XCB_ATOM_WM_TRANSIENT_FOR, XCB_ATOM_WINDOW, 0, 32),
                                      NULL);
        if (prop == NULL)
            return false;
    }

    FUNC2(con->window, prop);

    return true;
}