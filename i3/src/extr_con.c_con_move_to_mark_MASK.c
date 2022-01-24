#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ type; int /*<<< orphan*/  focus_head; } ;
typedef  TYPE_1__ Con ;

/* Variables and functions */
 scalar_t__ CT_WORKSPACE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,TYPE_1__*,int,int,int,int,int) ; 
 TYPE_1__* FUNC3 (char const*) ; 
 TYPE_1__* FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (char*,int /*<<< orphan*/ *) ; 

bool FUNC12(Con *con, const char *mark) {
    Con *target = FUNC3(mark);
    if (target == NULL) {
        FUNC0("found no container with mark \"%s\"\n", mark);
        return false;
    }

    /* For target containers in the scratchpad, we just send the window to the scratchpad. */
    if (FUNC4(target) == FUNC11("__i3_scratch", NULL)) {
        FUNC0("target container is in the scratchpad, moving container to scratchpad.\n");
        FUNC10(con);
        return true;
    }

    /* For floating target containers, we just send the window to the same workspace. */
    if (FUNC6(target)) {
        FUNC0("target container is floating, moving container to target's workspace.\n");
        FUNC9(con, FUNC4(target), true, false, false);
        return true;
    }

    if (target->type == CT_WORKSPACE && FUNC7(target)) {
        FUNC0("target container is an empty workspace, simply moving the container there.\n");
        FUNC9(con, target, true, false, false);
        return true;
    }

    /* For split containers, we use the currently focused container within it.
     * This allows setting marks on, e.g., tabbed containers which will move
     * con to a new tab behind the focused tab. */
    if (FUNC8(target)) {
        FUNC0("target is a split container, descending to the currently focused child.\n");
        target = FUNC1(&(target->focus_head));
    }

    if (con == target || FUNC5(target, con)) {
        FUNC0("cannot move the container to or inside itself, aborting.\n");
        return false;
    }

    return FUNC2(con, target, false, true, false, false, true);
}