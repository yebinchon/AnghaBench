#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kill_window_t ;
struct TYPE_8__ {scalar_t__ type; int /*<<< orphan*/  focus_head; } ;
typedef  TYPE_1__ Con ;

/* Variables and functions */
 scalar_t__ CT_OUTPUT ; 
 scalar_t__ CT_ROOT ; 
 scalar_t__ CT_WORKSPACE ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,...) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  focused ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC5(Con *con, kill_window_t kill_window) {
    FUNC3(con != NULL);
    FUNC0("Closing con = %p.\n", con);

    /* We never close output or root containers. */
    if (con->type == CT_OUTPUT || con->type == CT_ROOT) {
        FUNC0("con = %p is of type %d, not closing anything.\n", con, con->type);
        return;
    }

    if (con->type == CT_WORKSPACE) {
        FUNC0("con = %p is a workspace, closing all children instead.\n", con);
        Con *child, *nextchild;
        for (child = FUNC1(&(con->focus_head)); child;) {
            nextchild = FUNC2(child, focused);
            FUNC0("killing child = %p.\n", child);
            FUNC4(child, kill_window, false);
            child = nextchild;
        }

        return;
    }

    FUNC4(con, kill_window, false);
}