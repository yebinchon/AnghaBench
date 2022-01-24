#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {scalar_t__ type; double percent; int /*<<< orphan*/  floating; struct TYPE_18__* parent; } ;
typedef  TYPE_1__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  AFTER ; 
 scalar_t__ CT_WORKSPACE ; 
 int /*<<< orphan*/  DONT_KILL_WINDOW ; 
 int /*<<< orphan*/  FLOATING_USER_OFF ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,int) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC12(Con *con) {
    if (!FUNC6(con)) {
        FUNC0("Container isn't floating, not doing anything.\n");
        return;
    }

    Con *ws = FUNC5(con);
    if (FUNC7(ws)) {
        FUNC0("Can't disable floating for container in internal workspace.\n");
        return;
    }
    Con *tiling_focused = FUNC2(ws);

    if (tiling_focused->type == CT_WORKSPACE) {
        Con *parent = con->parent;
        FUNC3(con);
        con->parent = NULL;
        FUNC11(parent, DONT_KILL_WINDOW, true);
        FUNC1(con, tiling_focused, false);
        con->percent = 0.0;
        FUNC4(con->parent);
    } else {
        FUNC9(con, tiling_focused, AFTER);
    }

    con->floating = FLOATING_USER_OFF;
    FUNC8(con, false);
    FUNC10("floating", con);
}