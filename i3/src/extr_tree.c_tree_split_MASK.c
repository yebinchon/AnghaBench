#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ orientation_t ;
struct TYPE_13__ {scalar_t__ type; scalar_t__ layout; double percent; struct TYPE_13__* parent; int /*<<< orphan*/  focus_head; int /*<<< orphan*/  nodes_head; int /*<<< orphan*/  workspace_layout; } ;
typedef  TYPE_1__ Con ;

/* Variables and functions */
 scalar_t__ CT_WORKSPACE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ HORIZ ; 
 int /*<<< orphan*/  L_DEFAULT ; 
 scalar_t__ L_SPLITH ; 
 scalar_t__ L_SPLITV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  focused ; 
 int /*<<< orphan*/  nodes ; 
 TYPE_1__* FUNC7 (TYPE_1__*) ; 

void FUNC8(Con *con, orientation_t orientation) {
    if (FUNC4(con)) {
        FUNC0("Floating containers can't be split.\n");
        return;
    }

    if (con->type == CT_WORKSPACE) {
        if (FUNC6(con) < 2) {
            if (FUNC6(con) == 0) {
                FUNC0("Changing workspace_layout to L_DEFAULT\n");
                con->workspace_layout = L_DEFAULT;
            }
            FUNC0("Changing orientation of workspace\n");
            con->layout = (orientation == HORIZ) ? L_SPLITH : L_SPLITV;
            return;
        } else {
            /* if there is more than one container on the workspace
             * move them into a new container and handle this instead */
            con = FUNC7(con);
        }
    }

    Con *parent = con->parent;

    /* Force re-rendering to make the indicator border visible. */
    FUNC3(con);

    /* if we are in a container whose parent contains only one
     * child (its split functionality is unused so far), we just change the
     * orientation (more intuitive than splitting again) */
    if (FUNC6(parent) == 1 &&
        (parent->layout == L_SPLITH ||
         parent->layout == L_SPLITV)) {
        parent->layout = (orientation == HORIZ) ? L_SPLITH : L_SPLITV;
        FUNC0("Just changing orientation of existing container\n");
        return;
    }

    FUNC0("Splitting in orientation %d\n", orientation);

    /* 2: replace it with a new Con */
    Con *new = FUNC5(NULL, NULL);
    FUNC1(&(parent->nodes_head), con, new, nodes);
    FUNC1(&(parent->focus_head), con, new, focused);
    new->parent = parent;
    new->layout = (orientation == HORIZ) ? L_SPLITH : L_SPLITV;

    /* 3: swap 'percent' (resize factor) */
    new->percent = con->percent;
    con->percent = 0.0;

    /* 4: add it as a child to the new Con */
    FUNC2(con, new, false);
}