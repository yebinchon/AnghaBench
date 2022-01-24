#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ type; scalar_t__ layout; int /*<<< orphan*/  floating_head; int /*<<< orphan*/  nodes_head; int /*<<< orphan*/  focus_head; int /*<<< orphan*/  percent; struct TYPE_15__* parent; int /*<<< orphan*/  name; int /*<<< orphan*/ * window; } ;
typedef  TYPE_1__ Con ;

/* Variables and functions */
 scalar_t__ CT_CON ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  DONT_KILL_WINDOW ; 
 scalar_t__ L_OUTPUT ; 
 scalar_t__ L_SPLITH ; 
 scalar_t__ L_SPLITV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  floating_windows ; 
 int /*<<< orphan*/  focused ; 
 int /*<<< orphan*/  nodes ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC12(Con *con) {
    Con *current, *child, *parent = con->parent;
    FUNC0("Checking if I can flatten con = %p / %s\n", con, con->name);

    /* We only consider normal containers without windows */
    if (con->type != CT_CON ||
        parent->layout == L_OUTPUT || /* con == "content" */
        con->window != NULL)
        goto recurse;

    /* Ensure it got only one child */
    child = FUNC2(&(con->nodes_head));
    if (child == NULL || FUNC6(child, nodes) != NULL)
        goto recurse;

    FUNC0("child = %p, con = %p, parent = %p\n", child, con, parent);

    /* The child must have a different orientation than the con but the same as
     * the con’s parent to be redundant */
    if (!FUNC9(con) ||
        !FUNC9(child) ||
        (con->layout != L_SPLITH && con->layout != L_SPLITV) ||
        (child->layout != L_SPLITH && child->layout != L_SPLITV) ||
        FUNC10(con) == FUNC10(child) ||
        FUNC10(child) != FUNC10(parent))
        goto recurse;

    FUNC0("Alright, I have to flatten this situation now. Stay calm.\n");
    /* 1: save focus */
    Con *focus_next = FUNC2(&(child->focus_head));

    FUNC0("detaching...\n");
    /* 2: re-attach the children to the parent before con */
    while (!FUNC1(&(child->nodes_head))) {
        current = FUNC2(&(child->nodes_head));
        FUNC0("detaching current=%p / %s\n", current, current->name);
        FUNC8(current);
        FUNC0("re-attaching\n");
        /* We don’t use con_attach() here because for a CT_CON, the special
         * case handling of con_attach() does not trigger. So all it would do
         * is calling TAILQ_INSERT_AFTER, but with the wrong container. So we
         * directly use the TAILQ macros. */
        current->parent = parent;
        FUNC3(con, current, nodes);
        FUNC0("attaching to focus list\n");
        FUNC5(&(parent->focus_head), current, focused);
        current->percent = con->percent;
    }
    FUNC0("re-attached all\n");

    /* 3: restore focus, if con was focused */
    if (focus_next != NULL &&
        FUNC2(&(parent->focus_head)) == con) {
        FUNC0("restoring focus to focus_next=%p\n", focus_next);
        FUNC7(&(parent->focus_head), focus_next, focused);
        FUNC4(&(parent->focus_head), focus_next, focused);
        FUNC0("restored focus.\n");
    }

    /* 4: close the redundant cons */
    FUNC0("closing redundant cons\n");
    FUNC11(con, DONT_KILL_WINDOW, true);

    /* Well, we got to abort the recursion here because we destroyed the
     * container. However, if tree_flatten() is called sufficiently often,
     * there can’t be the situation of having two pairs of redundant containers
     * at once. Therefore, we can safely abort the recursion on this level
     * after flattening. */
    return;

recurse:
    /* We cannot use normal foreach here because tree_flatten might close the
     * current container. */
    current = FUNC2(&(con->nodes_head));
    while (current != NULL) {
        Con *next = FUNC6(current, nodes);
        FUNC12(current);
        current = next;
    }

    current = FUNC2(&(con->floating_head));
    while (current != NULL) {
        Con *next = FUNC6(current, floating_windows);
        FUNC12(current);
        current = next;
    }
}