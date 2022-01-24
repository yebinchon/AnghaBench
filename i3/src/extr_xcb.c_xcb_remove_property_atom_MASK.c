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
struct TYPE_6__ {int format; } ;
typedef  TYPE_1__ xcb_get_property_reply_t ;
typedef  int /*<<< orphan*/  xcb_connection_t ;
typedef  scalar_t__ xcb_atom_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  XCB_ATOM_ATOM ; 
 int /*<<< orphan*/  XCB_GET_PROPERTY_TYPE_ANY ; 
 int /*<<< orphan*/  XCB_PROP_MODE_REPLACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(xcb_connection_t *conn, xcb_window_t window, xcb_atom_t property, xcb_atom_t atom) {
    FUNC6(conn);

    xcb_get_property_reply_t *reply =
        FUNC3(conn,
                               FUNC2(conn, false, window, property, XCB_GET_PROPERTY_TYPE_ANY, 0, 4096), NULL);
    if (reply == NULL || FUNC5(reply) == 0)
        goto release_grab;
    xcb_atom_t *atoms = FUNC4(reply);
    if (atoms == NULL) {
        goto release_grab;
    }

    {
        int num = 0;
        const int current_size = FUNC5(reply) / (reply->format / 8);
        xcb_atom_t values[current_size];
        for (int i = 0; i < current_size; i++) {
            if (atoms[i] != atom)
                values[num++] = atoms[i];
        }

        FUNC1(conn, XCB_PROP_MODE_REPLACE, window, property, XCB_ATOM_ATOM, 32, num, values);
    }

release_grab:
    FUNC0(reply);
    FUNC7(conn);
}