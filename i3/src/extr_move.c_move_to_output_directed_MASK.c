#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  direction_t ;
struct TYPE_18__ {int /*<<< orphan*/  deco_render_params; } ;
struct TYPE_17__ {int /*<<< orphan*/  con; } ;
typedef  TYPE_1__ Output ;
typedef  TYPE_2__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  CLOSEST_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  child ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  croot ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_2__* focused ; 
 TYPE_1__* FUNC7 (TYPE_2__*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC14(Con *con, direction_t direction) {
    Output *current_output = FUNC7(con);
    Output *output = FUNC8(direction, current_output, CLOSEST_OUTPUT);

    if (!output) {
        FUNC0("No output in this direction found. Not moving.\n");
        return;
    }

    Con *ws = NULL;
    FUNC2(ws, FUNC10(output->con), FUNC12(child));

    if (!ws) {
        FUNC0("No workspace on output in this direction found. Not moving.\n");
        return;
    }

    Con *old_ws = FUNC5(con);
    const bool moves_focus = (focused == con);
    FUNC3(con, ws, direction);
    if (moves_focus) {
        /* workspace_show will not correctly update the active workspace because
         * the focused container, con, is now a child of ws. To work around this
         * and still produce the correct workspace focus events (see
         * 517-regress-move-direction-ipc.t) we need to temporarily set focused
         * to the old workspace. */
        focused = old_ws;
        FUNC13(ws);
        FUNC4(con);
    }

    /* force re-painting the indicators */
    FUNC1(con->deco_render_params);

    FUNC9("move", con);
    FUNC11(croot);
    FUNC6();
}