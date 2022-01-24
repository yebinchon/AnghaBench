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
struct TYPE_8__ {scalar_t__ workspace_layout; scalar_t__ layout; struct TYPE_8__* parent; struct TYPE_8__* name; } ;
typedef  TYPE_1__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ L_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

Con *FUNC4(Con *ws) {
    FUNC0("Attaching a window to workspace %p / %s\n", ws, ws->name);

    if (ws->workspace_layout == L_DEFAULT) {
        FUNC0("Default layout, just attaching it to the workspace itself.\n");
        return ws;
    }

    FUNC0("Non-default layout, creating a new split container\n");
    /* 1: create a new split container */
    Con *new = FUNC3(NULL, NULL);
    new->parent = ws;

    /* 2: set the requested layout on the split con */
    new->layout = ws->workspace_layout;

    /* 4: attach the new split container to the workspace */
    FUNC0("Attaching new split %p to workspace %p\n", new, ws);
    FUNC1(new, ws, false);

    /* 5: fix the percentages */
    FUNC2(ws);

    return new;
}