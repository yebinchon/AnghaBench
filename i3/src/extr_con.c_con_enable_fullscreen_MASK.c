#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fullscreen_mode_t ;
struct TYPE_13__ {scalar_t__ type; int /*<<< orphan*/  name; int /*<<< orphan*/  fullscreen_mode; } ;
typedef  TYPE_1__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  CF_GLOBAL ; 
 int /*<<< orphan*/  CF_OUTPUT ; 
 scalar_t__ CT_WORKSPACE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* croot ; 
 TYPE_1__* focused ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

void FUNC8(Con *con, fullscreen_mode_t fullscreen_mode) {
    if (con->type == CT_WORKSPACE) {
        FUNC0("You cannot make a workspace fullscreen.\n");
        return;
    }

    FUNC1(fullscreen_mode == CF_GLOBAL || fullscreen_mode == CF_OUTPUT);

    if (fullscreen_mode == CF_GLOBAL)
        FUNC0("enabling global fullscreen for %p / %s\n", con, con->name);
    else
        FUNC0("enabling fullscreen for %p / %s\n", con, con->name);

    if (con->fullscreen_mode == fullscreen_mode) {
        FUNC0("fullscreen already enabled for %p / %s\n", con, con->name);
        return;
    }

    Con *con_ws = FUNC5(con);

    /* Disable any fullscreen container that would conflict the new one. */
    Con *fullscreen = FUNC4(croot, CF_GLOBAL);
    if (fullscreen == NULL)
        fullscreen = FUNC4(con_ws, CF_OUTPUT);
    if (fullscreen != NULL)
        FUNC3(fullscreen);

    /* Set focus to new fullscreen container. Unless in global fullscreen mode
     * and on another workspace restore focus afterwards.
     * Switch to the container’s workspace if mode is global. */
    Con *cur_ws = FUNC5(focused);
    Con *old_focused = focused;
    if (fullscreen_mode == CF_GLOBAL && cur_ws != con_ws)
        FUNC7(con_ws);
    FUNC2(con);
    if (fullscreen_mode != CF_GLOBAL && cur_ws != con_ws)
        FUNC2(old_focused);

    FUNC6(con, fullscreen_mode);
}