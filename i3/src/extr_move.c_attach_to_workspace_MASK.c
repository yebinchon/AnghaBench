#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ direction_t ;
struct TYPE_9__ {double percent; int /*<<< orphan*/  focus_head; int /*<<< orphan*/  nodes_head; struct TYPE_9__* parent; } ;
typedef  TYPE_1__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ D_DOWN ; 
 scalar_t__ D_RIGHT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  focused ; 
 int /*<<< orphan*/  nodes ; 
 int /*<<< orphan*/  on_remove_child ; 

__attribute__((used)) static void FUNC5(Con *con, Con *ws, direction_t direction) {
    FUNC3(con);
    Con *old_parent = con->parent;
    con->parent = ws;

    if (direction == D_RIGHT || direction == D_DOWN) {
        FUNC1(&(ws->nodes_head), con, nodes);
    } else {
        FUNC2(&(ws->nodes_head), con, nodes);
    }
    FUNC2(&(ws->focus_head), con, focused);

    /* Pretend the con was just opened with regards to size percent values.
     * Since the con is moved to a completely different con, the old value
     * does not make sense anyways. */
    con->percent = 0.0;
    FUNC4(ws);

    FUNC4(old_parent);
    FUNC0(old_parent, on_remove_child);
}