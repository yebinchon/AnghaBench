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
struct TYPE_8__ {scalar_t__ type; int /*<<< orphan*/  focus_head; } ;
typedef  TYPE_1__ Con ;

/* Variables and functions */
 scalar_t__ CT_WORKSPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  focused ; 

void FUNC5(Con *con, Con **focus_order) {
    int focus_heads = 0;
    while (!FUNC0(&(con->focus_head))) {
        Con *current = FUNC1(&(con->focus_head));

        FUNC3(&(con->focus_head), current, focused);
        focus_heads++;
    }

    for (int idx = 0; idx < focus_heads; idx++) {
        /* Useful when encapsulating a workspace. */
        if (con->type != CT_WORKSPACE && FUNC4(focus_order[idx])) {
            focus_heads++;
            continue;
        }

        FUNC2(&(con->focus_head), focus_order[idx], focused);
    }
}