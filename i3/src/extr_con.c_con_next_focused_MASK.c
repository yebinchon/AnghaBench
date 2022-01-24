#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ type; struct TYPE_12__* parent; int /*<<< orphan*/  focus_head; } ;
typedef  TYPE_1__ Con ;

/* Variables and functions */
 scalar_t__ CT_DOCKAREA ; 
 scalar_t__ CT_FLOATING_CON ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  focused ; 
 TYPE_1__* FUNC6 (TYPE_1__*) ; 

Con *FUNC7(Con *con) {
    /* dock clients cannot be focused, so we focus the workspace instead */
    if (con->parent->type == CT_DOCKAREA) {
        FUNC0("selecting workspace for dock client\n");
        return FUNC4(FUNC6(con->parent->parent));
    }
    if (FUNC5(con)) {
        con = con->parent;
    }

    /* if 'con' is not the first entry in the focus stack, use the first one as
     * it’s currently focused already */
    Con *next = FUNC2(&(con->parent->focus_head));
    if (next != con) {
        FUNC0("Using first entry %p\n", next);
    } else {
        /* try to focus the next container on the same level as this one or fall
         * back to its parent */
        if (!(next = FUNC3(con, focused))) {
            next = con->parent;
        }
    }

    /* now go down the focus stack as far as
     * possible, excluding the current container */
    while (!FUNC1(&(next->focus_head)) && FUNC2(&(next->focus_head)) != con) {
        next = FUNC2(&(next->focus_head));
    }

    if (con->type == CT_FLOATING_CON && next != con->parent) {
        next = FUNC4(next);
    }

    return next;
}