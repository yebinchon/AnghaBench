#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  focus_head; } ;
struct TYPE_6__ {scalar_t__ type; int /*<<< orphan*/  focus_head; } ;
typedef  TYPE_1__ Con ;

/* Variables and functions */
 scalar_t__ CT_FLOATING_CON ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_2__* focused ; 

bool FUNC4(void) {
    /* Go down the focus stack of the current node */
    Con *next = FUNC2(&(focused->focus_head));
    if (next == FUNC1(&(focused->focus_head))) {
        FUNC0("cannot go down\n");
        return false;
    } else if (next->type == CT_FLOATING_CON) {
        /* Floating cons shouldn't be directly focused; try immediately
         * going to the grandchild of the focused con. */
        Con *child = FUNC2(&(next->focus_head));
        if (child == FUNC1(&(next->focus_head))) {
            FUNC0("cannot go down\n");
            return false;
        } else
            next = FUNC2(&(next->focus_head));
    }

    FUNC3(next);
    return true;
}