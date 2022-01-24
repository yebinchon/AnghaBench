#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct con_state {int need_reparent; int /*<<< orphan*/  old_frame; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
struct TYPE_6__ {TYPE_1__ frame; } ;
typedef  TYPE_2__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct con_state* FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(Con *con, Con *old) {
    struct con_state *state;
    if ((state = FUNC1(con->frame.id)) == NULL) {
        FUNC0("window state for con not found\n");
        return;
    }

    state->need_reparent = true;
    state->old_frame = old->frame.id;
}