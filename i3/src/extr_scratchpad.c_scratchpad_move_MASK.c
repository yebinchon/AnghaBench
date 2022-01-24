#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ type; scalar_t__ scratchpad_state; struct TYPE_15__* parent; int /*<<< orphan*/  focus_head; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ Con ;

/* Variables and functions */
 scalar_t__ CT_WORKSPACE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ SCRATCHPAD_CHANGED ; 
 scalar_t__ SCRATCHPAD_FRESH ; 
 scalar_t__ SCRATCHPAD_NONE ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  focused ; 
 TYPE_1__* FUNC9 (char*,int /*<<< orphan*/ *) ; 

void FUNC10(Con *con) {
    if (con->type == CT_WORKSPACE) {
        FUNC1("'move scratchpad' used on a workspace \"%s\". Calling it "
            "recursively on all windows on this workspace.\n",
            con->name);
        Con *current;
        current = FUNC2(&(con->focus_head));
        while (current) {
            Con *next = FUNC3(current, focused);
            FUNC10(current);
            current = next;
        }
        return;
    }
    FUNC0("should move con %p to __i3_scratch\n", con);

    Con *__i3_scratch = FUNC9("__i3_scratch", NULL);
    if (FUNC5(con) == __i3_scratch) {
        FUNC0("This window is already on __i3_scratch.\n");
        return;
    }

    /* If the current con is in fullscreen mode, we need to disable that,
     *  as a scratchpad window should never be in fullscreen mode */
    FUNC4(con);

    /* 1: Ensure the window or any parent is floating. From now on, we deal
     * with the CT_FLOATING_CON. We use automatic == false because the user
     * made the choice that this window should be a scratchpad (and floating).
     */
    Con *maybe_floating_con = FUNC6(con);
    if (maybe_floating_con == NULL) {
        FUNC8(con, false);
        con = con->parent;
    } else {
        con = maybe_floating_con;
    }

    /* 2: Send the window to the __i3_scratch workspace, mainting its
     * coordinates and not warping the pointer. */
    FUNC7(con, __i3_scratch, true, true, false);

    /* 3: If this is the first time this window is used as a scratchpad, we set
     * the scratchpad_state to SCRATCHPAD_FRESH. The window will then be
     * adjusted in size according to what the user specifies. */
    if (con->scratchpad_state == SCRATCHPAD_NONE) {
        FUNC0("This window was never used as a scratchpad before.\n");
        if (con == maybe_floating_con) {
            FUNC0("It was in floating mode before, set scratchpad state to changed.\n");
            con->scratchpad_state = SCRATCHPAD_CHANGED;
        } else {
            FUNC0("It was in tiling mode before, set scratchpad state to fresh.\n");
            con->scratchpad_state = SCRATCHPAD_FRESH;
        }
    }
}