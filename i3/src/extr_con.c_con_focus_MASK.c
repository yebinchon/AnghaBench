#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ urgent; struct TYPE_14__* parent; int /*<<< orphan*/  focus_head; } ;
typedef  TYPE_1__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 TYPE_1__* focused ; 
 int /*<<< orphan*/  FUNC8 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(Con *con) {
    FUNC3(con != NULL);
    FUNC0("con_focus = %p\n", con);

    /* 1: set focused-pointer to the new con */
    /* 2: exchange the position of the container in focus stack of the parent all the way up */
    FUNC2(&(con->parent->focus_head), con, focused);
    FUNC1(&(con->parent->focus_head), con, focused);
    if (con->parent->parent != NULL)
        FUNC10(con->parent);

    focused = con;
    /* We can't blindly reset non-leaf containers since they might have
     * other urgent children. Therefore we only reset leafs and propagate
     * the changes upwards via con_update_parents_urgency() which does proper
     * checks before resetting the urgency.
     */
    if (con->urgent && FUNC5(con)) {
        FUNC6(con, false);
        FUNC7(con);
        FUNC9(FUNC4(con));
        FUNC8("urgent", con);
    }
}