#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Con ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * focused ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(Con *con) {
    Con *ws = FUNC3(con);
    Con *previous_focus = focused;
    Con *fullscreen_on_ws = FUNC2(ws);

    if (fullscreen_on_ws && fullscreen_on_ws != con && !FUNC4(con, fullscreen_on_ws)) {
        FUNC1(fullscreen_on_ws);
    }

    FUNC0(con);

    /* If the container is not on the current workspace, workspace_show() will
     * switch to a different workspace and (if enabled) trigger a mouse pointer
     * warp to the currently focused container (!) on the target workspace.
     *
     * Therefore, before calling workspace_show(), we make sure that 'con' will
     * be focused on the workspace. However, we cannot just con_focus(con)
     * because then the pointer will not be warped at all (the code thinks we
     * are already there).
     *
     * So we focus 'con' to make it the currently focused window of the target
     * workspace, then revert focus. */
    if (ws != FUNC3(previous_focus)) {
        FUNC0(previous_focus);
        /* Now switch to the workspace, then focus */
        FUNC5(ws);
        FUNC0(con);
    }
}