#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_window_t ;
typedef  int /*<<< orphan*/  xcb_get_property_reply_t ;
typedef  int /*<<< orphan*/  xcb_connection_t ;
typedef  int /*<<< orphan*/  xcb_atom_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_9__ {int /*<<< orphan*/ * name; } ;
struct TYPE_8__ {TYPE_2__* window; } ;
typedef  TYPE_1__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  croot ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (TYPE_1__*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC9(void *data, xcb_connection_t *conn, uint8_t state,
                                            xcb_window_t window, xcb_atom_t atom, xcb_get_property_reply_t *prop) {
    Con *con;
    if ((con = FUNC1(window)) == NULL || con->window == NULL)
        return false;

    char *old_name = (con->window->name != NULL ? FUNC5(FUNC2(con->window->name)) : NULL);

    FUNC7(con->window, prop);

    con = FUNC4(con);

    FUNC8(croot);

    if (FUNC6(con->window, old_name))
        FUNC3("title", con);

    FUNC0(old_name);

    return true;
}