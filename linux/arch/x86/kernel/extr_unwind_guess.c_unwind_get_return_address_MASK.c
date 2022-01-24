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
struct unwind_state {int /*<<< orphan*/ * sp; int /*<<< orphan*/  graph_idx; int /*<<< orphan*/  task; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct unwind_state*) ; 

unsigned long FUNC3(struct unwind_state *state)
{
	unsigned long addr;

	if (FUNC2(state))
		return 0;

	addr = FUNC0(*state->sp);

	return FUNC1(state->task, &state->graph_idx,
				     addr, state->sp);
}