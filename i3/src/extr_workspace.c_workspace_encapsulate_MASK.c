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
struct TYPE_17__ {int /*<<< orphan*/  nodes_head; int /*<<< orphan*/  name; int /*<<< orphan*/  layout; struct TYPE_17__* parent; } ;
typedef  TYPE_1__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**) ; 
 TYPE_1__** FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_1__**) ; 

Con *FUNC10(Con *ws) {
    if (FUNC2(&(ws->nodes_head))) {
        FUNC1("Workspace %p / %s has no children to encapsulate\n", ws, ws->name);
        return NULL;
    }

    Con *new = FUNC6(NULL, NULL);
    new->parent = ws;
    new->layout = ws->layout;

    Con **focus_order = FUNC8(ws);

    FUNC0("Moving children of workspace %p / %s into container %p\n",
         ws, ws->name, new);
    Con *child;
    while (!FUNC2(&(ws->nodes_head))) {
        child = FUNC3(&(ws->nodes_head));
        FUNC5(child);
        FUNC4(child, new, true);
    }

    FUNC9(new, focus_order);
    FUNC7(focus_order);

    FUNC4(new, ws, true);

    return new;
}