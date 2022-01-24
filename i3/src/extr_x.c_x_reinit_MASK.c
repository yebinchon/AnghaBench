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
struct con_state {int initial; int child_mapped; int /*<<< orphan*/  window_rect; TYPE_2__* con; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct TYPE_5__ {TYPE_1__ frame; } ;
typedef  int /*<<< orphan*/  Rect ;
typedef  TYPE_2__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct con_state*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct con_state* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(Con *con) {
    struct con_state *state;

    if ((state = FUNC3(con->frame.id)) == NULL) {
        FUNC1("window state not found\n");
        return;
    }

    FUNC0("resetting state %p to initial\n", state);
    state->initial = true;
    state->child_mapped = false;
    state->con = con;
    FUNC2(&(state->window_rect), 0, sizeof(Rect));
}