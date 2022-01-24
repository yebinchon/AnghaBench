#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ type; } ;
typedef  TYPE_1__ Con ;

/* Variables and functions */
 scalar_t__ CT_WORKSPACE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (TYPE_1__*) ; 

void FUNC5(Con *con, Con *workspace, bool fix_coordinates, bool dont_warp, bool ignore_focus) {
    FUNC2(workspace->type == CT_WORKSPACE);

    Con *source_ws = FUNC4(con);
    if (workspace == source_ws) {
        FUNC0("Not moving, already there\n");
        return;
    }

    Con *target = FUNC3(workspace);
    FUNC1(con, target, true, fix_coordinates, dont_warp, ignore_focus, true);
}