#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  direction_t ;
struct TYPE_12__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_14__ {TYPE_1__ rect; } ;
struct TYPE_13__ {int /*<<< orphan*/  con; } ;
typedef  TYPE_2__ Output ;
typedef  TYPE_3__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  CF_GLOBAL ; 
 int /*<<< orphan*/  CLOSEST_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  child ; 
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Con *FUNC8(Con *con, direction_t direction) {
    if (FUNC2(con, CF_GLOBAL)) {
        FUNC0("Cannot change workspace while in global fullscreen mode.\n");
        return NULL;
    }

    Output *current_output = FUNC3(con->rect.x, con->rect.y);
    if (!current_output) {
        return NULL;
    }
    FUNC0("Current output is %s\n", FUNC6(current_output));

    Output *next_output = FUNC4(direction, current_output, CLOSEST_OUTPUT);
    if (!next_output) {
        return NULL;
    }
    FUNC0("Next output is %s\n", FUNC6(next_output));

    /* Find visible workspace on next output */
    Con *workspace = NULL;
    FUNC1(workspace, FUNC5(next_output->con), FUNC7(child));
    return workspace;
}