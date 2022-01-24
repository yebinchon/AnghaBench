#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  position_t ;
typedef  scalar_t__ orientation_t ;
typedef  int /*<<< orphan*/  direction_t ;
struct TYPE_29__ {scalar_t__ type; scalar_t__ fullscreen_mode; scalar_t__ layout; int /*<<< orphan*/  deco_render_params; struct TYPE_29__* parent; int /*<<< orphan*/  nodes_head; } ;
typedef  TYPE_1__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  AFTER ; 
 int /*<<< orphan*/  BEFORE ; 
 scalar_t__ CF_GLOBAL ; 
 scalar_t__ CF_OUTPUT ; 
 scalar_t__ CT_WORKSPACE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  D_LEFT ; 
 int /*<<< orphan*/  D_UP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ L_DEFAULT ; 
 TYPE_1__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int FUNC13 (TYPE_1__*) ; 
 scalar_t__ FUNC14 (TYPE_1__*) ; 
 TYPE_1__* FUNC15 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  croot ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nodes ; 
 int /*<<< orphan*/  nodes_head ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*,scalar_t__) ; 

void FUNC24(Con *con, direction_t direction) {
    position_t position;
    Con *target;

    FUNC0("Moving in direction %d\n", direction);

    /* 1: get the first parent with the same orientation */

    if (con->type == CT_WORKSPACE) {
        FUNC0("Not moving workspace\n");
        return;
    }

    if (con->fullscreen_mode == CF_GLOBAL) {
        FUNC0("Not moving fullscreen global container\n");
        return;
    }

    if ((con->fullscreen_mode == CF_OUTPUT) ||
        (con->parent->type == CT_WORKSPACE && FUNC13(con->parent) == 1)) {
        /* This is the only con on this workspace */
        FUNC20(con, direction);
        return;
    }

    orientation_t o = FUNC21(direction);

    Con *same_orientation = FUNC15(con, o);
    /* The do {} while is used to 'restart' at this point with a different
     * same_orientation, see the very last lines before the end of this block
     * */
    do {
        /* There is no parent container with the same orientation */
        if (!same_orientation) {
            if (FUNC11(con)) {
                /* this is a floating con, we just disable floating */
                FUNC17(con);
                return;
            }
            if (FUNC10(con)) {
                /* 'con' should be moved out of a floating container */
                FUNC0("Inside floating, moving to workspace\n");
                FUNC6(con, FUNC9(con), direction);
                goto end;
            }
            FUNC0("Force-changing orientation\n");
            FUNC23(FUNC9(con), o);
            same_orientation = FUNC15(con, o);
        }

        /* easy case: the move is within this container */
        if (same_orientation == con->parent) {
            Con *swap = (direction == D_LEFT || direction == D_UP)
                            ? FUNC4(con, nodes_head, nodes)
                            : FUNC3(con, nodes);
            if (swap) {
                if (!FUNC12(swap)) {
                    FUNC0("Moving into our bordering branch\n");
                    target = FUNC7(swap, direction);
                    position = (FUNC14(target->parent) != o ||
                                        direction == D_UP ||
                                        direction == D_LEFT
                                    ? AFTER
                                    : BEFORE);
                    FUNC18(con, target, position);
                    goto end;
                }

                FUNC0("Swapping with sibling.\n");
                if (direction == D_LEFT || direction == D_UP) {
                    FUNC5(swap, con, &(swap->parent->nodes_head), nodes);
                } else {
                    FUNC5(con, swap, &(swap->parent->nodes_head), nodes);
                }

                FUNC19("move", con);
                return;
            }

            if (con->parent == FUNC9(con)) {
                /* If we couldn't find a place to move it on this workspace, try
                 * to move it to a workspace on a different output */
                FUNC20(con, direction);
                return;
            }

            /* If there was no con with which we could swap the current one,
             * search again, but starting one level higher. */
            same_orientation = FUNC15(con->parent, o);
        }
    } while (same_orientation == NULL);

    /* this time, we have to move to another container */
    /* This is the container *above* 'con' (an ancestor of con) which is inside
     * 'same_orientation' */
    Con *above = con;
    while (above->parent != same_orientation)
        above = above->parent;

    /* Enforce the fullscreen focus restrictions. */
    if (!FUNC8(above->parent)) {
        FUNC2("Cannot move out of fullscreen container\n");
        return;
    }

    FUNC0("above = %p\n", above);

    Con *next = (direction == D_UP || direction == D_LEFT ? FUNC4(above, nodes_head, nodes) : FUNC3(above, nodes));

    if (next && !FUNC12(next)) {
        FUNC0("Moving into the bordering branch of our adjacent container\n");
        target = FUNC7(next, direction);
        position = (FUNC14(target->parent) != o ||
                            direction == D_UP ||
                            direction == D_LEFT
                        ? AFTER
                        : BEFORE);
        FUNC18(con, target, position);
    } else if (!next &&
               con->parent->parent->type == CT_WORKSPACE &&
               con->parent->layout != L_DEFAULT &&
               FUNC13(con->parent) == 1) {
        /* Con is the lone child of a non-default layout container at the edge
         * of the workspace. Treat it as though the workspace is its parent
         * and move it to the next output. */
        FUNC0("Grandparent is workspace\n");
        FUNC20(con, direction);
        return;
    } else {
        FUNC0("Moving into container above\n");
        position = (direction == D_UP || direction == D_LEFT ? BEFORE : AFTER);
        FUNC18(con, above, position);
    }

end:
    /* force re-painting the indicators */
    FUNC1(con->deco_render_params);

    FUNC19("move", con);
    FUNC22(croot);
    FUNC16();
}