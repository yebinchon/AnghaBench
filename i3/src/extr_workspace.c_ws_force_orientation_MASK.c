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
typedef  scalar_t__ orientation_t ;
struct TYPE_16__ {struct TYPE_16__* layout; int /*<<< orphan*/  nodes_head; struct TYPE_16__* parent; } ;
typedef  TYPE_1__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ HORIZ ; 
 TYPE_1__* L_SPLITH ; 
 TYPE_1__* L_SPLITV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**) ; 
 TYPE_1__** FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_1__**) ; 

void FUNC10(Con *ws, orientation_t orientation) {
    /* 1: create a new split container */
    Con *split = FUNC6(NULL, NULL);
    split->parent = ws;

    /* 2: copy layout from workspace */
    split->layout = ws->layout;

    /* 3: move the existing cons of this workspace below the new con */
    Con **focus_order = FUNC8(ws);

    FUNC0("Moving cons\n");
    while (!FUNC1(&(ws->nodes_head))) {
        Con *child = FUNC2(&(ws->nodes_head));
        FUNC4(child);
        FUNC3(child, split, true);
    }

    FUNC9(split, focus_order);
    FUNC7(focus_order);

    /* 4: switch workspace layout */
    ws->layout = (orientation == HORIZ) ? L_SPLITH : L_SPLITV;
    FUNC0("split->layout = %d, ws->layout = %d\n", split->layout, ws->layout);

    /* 5: attach the new split container to the workspace */
    FUNC0("Attaching new split (%p) to ws (%p)\n", split, ws);
    FUNC3(split, ws, false);

    /* 6: fix the percentages */
    FUNC5(ws);
}