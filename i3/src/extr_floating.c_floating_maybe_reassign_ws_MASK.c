#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  name; int /*<<< orphan*/  focus_head; int /*<<< orphan*/  rect; } ;
struct TYPE_13__ {scalar_t__ con; } ;
typedef  TYPE_1__ Output ;
typedef  TYPE_2__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_2__*,int,int,int) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 

bool FUNC12(Con *con) {
    if (FUNC7(FUNC6(con))) {
        FUNC0("Con in an internal workspace\n");
        return false;
    }

    Output *output = FUNC9(con->rect);

    if (!output) {
        FUNC1("No output found at destination coordinates?\n");
        return false;
    }

    if (FUNC5(con) == output->con) {
        FUNC0("still the same ws\n");
        return false;
    }

    FUNC0("Need to re-assign!\n");

    Con *content = FUNC10(output->con);
    Con *ws = FUNC2(&(content->focus_head));
    FUNC0("Moving con %p / %s to workspace %p / %s\n", con, con->name, ws, ws->name);
    FUNC8(con, ws, false, true, false);
    FUNC11(ws);
    FUNC3(FUNC4(con));
    return true;
}