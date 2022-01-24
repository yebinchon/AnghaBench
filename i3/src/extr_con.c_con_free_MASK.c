#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {struct TYPE_11__* name; int /*<<< orphan*/  marks_head; int /*<<< orphan*/  swallow_head; struct TYPE_11__* deco_render_params; } ;
typedef  TYPE_1__ mark_t ;
typedef  TYPE_1__ Match ;
typedef  TYPE_1__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  all_cons ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  marks ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  matches ; 

void FUNC7(Con *con) {
    FUNC5(con->name);
    FUNC1(con->deco_render_params);
    FUNC4(&all_cons, con, all_cons);
    while (!FUNC2(&(con->swallow_head))) {
        Match *match = FUNC3(&(con->swallow_head));
        FUNC4(&(con->swallow_head), match, matches);
        FUNC6(match);
        FUNC5(match);
    }
    while (!FUNC2(&(con->marks_head))) {
        mark_t *mark = FUNC3(&(con->marks_head));
        FUNC4(&(con->marks_head), mark, marks);
        FUNC1(mark->name);
        FUNC1(mark);
    }
    FUNC5(con);
    FUNC0("con %p freed\n", con);
}