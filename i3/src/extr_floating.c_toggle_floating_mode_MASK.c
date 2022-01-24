#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ type; } ;
typedef  TYPE_1__ Con ;

/* Variables and functions */
 scalar_t__ CT_FLOATING_CON ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

void FUNC5(Con *con, bool automatic) {
    /* forbid the command to toggle floating on a CT_FLOATING_CON */
    if (con->type == CT_FLOATING_CON) {
        FUNC0("Cannot toggle floating mode on con = %p because it is of type CT_FLOATING_CON.\n", con);
        return;
    }

    /* see if the client is already floating */
    if (FUNC2(con)) {
        FUNC1("already floating, re-setting to tiling\n");

        FUNC3(con);
        return;
    }

    FUNC4(con, automatic);
}