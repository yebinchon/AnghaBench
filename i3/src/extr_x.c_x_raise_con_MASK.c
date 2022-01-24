#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  con_state ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct TYPE_5__ {TYPE_1__ frame; } ;
typedef  TYPE_2__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  state_head ; 

void FUNC3(Con *con) {
    con_state *state;
    state = FUNC2(con->frame.id);
    //DLOG("raising in new stack: %p / %s / %s / xid %08x\n", con, con->name, con->window ? con->window->name_json : "", state->id);

    FUNC1(&state_head, state, state);
    FUNC0(&state_head, state, state);
}