#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  direction_t ;
struct TYPE_16__ {scalar_t__ type; scalar_t__ fullscreen_mode; int /*<<< orphan*/  floating_head; struct TYPE_16__* parent; int /*<<< orphan*/  rect; } ;
typedef  TYPE_1__ Con ;

/* Variables and functions */
 scalar_t__ CF_NONE ; 
 scalar_t__ CT_FLOATING_CON ; 
 scalar_t__ CT_WORKSPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  floating_head ; 
 int /*<<< orphan*/  floating_windows ; 
 TYPE_1__* FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(Con *con, direction_t direction) {
    Con *next = FUNC7(con, direction);
    if (!next) {
        return;
    }
    if (next->type == CT_WORKSPACE) {
        /* Show next workspace and focus appropriate container if possible. */
        /* Use descend_focused first to give higher priority to floating or
         * tiling fullscreen containers. */
        Con *focus = FUNC4(next);
        if (focus->fullscreen_mode == CF_NONE) {
            Con *focus_tiling = FUNC5(next);
            /* If descend_tiling returned a workspace then focus is either a
             * floating container or the same workspace. */
            if (focus_tiling != next) {
                focus = focus_tiling;
            }
        }

        FUNC8(next);
        FUNC3(focus);
        FUNC9(&(focus->rect));
        return;
    } else if (next->type == CT_FLOATING_CON) {
        /* Raise the floating window on top of other windows preserving relative
         * stack order */
        Con *parent = next->parent;
        while (FUNC1(&(parent->floating_head), floating_head) != next) {
            Con *last = FUNC1(&(parent->floating_head), floating_head);
            FUNC2(&(parent->floating_head), last, floating_windows);
            FUNC0(&(parent->floating_head), last, floating_windows);
        }
    }

    FUNC8(FUNC6(next));
    FUNC3(FUNC4(next));
}