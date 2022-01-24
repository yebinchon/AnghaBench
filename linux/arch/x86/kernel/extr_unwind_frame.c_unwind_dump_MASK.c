#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned long* type; int next_sp; } ;
struct unwind_state {unsigned long stack_mask; void* graph_idx; int /*<<< orphan*/  task; int /*<<< orphan*/  orig_sp; TYPE_1__ stack_info; } ;
struct stack_info {unsigned long* end; int /*<<< orphan*/  next_sp; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int BITS_PER_LONG ; 
 unsigned long* FUNC0 (int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long*,int /*<<< orphan*/ ,struct stack_info*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long*,int,unsigned long,...) ; 

__attribute__((used)) static void FUNC4(struct unwind_state *state)
{
	static bool dumped_before = false;
	bool prev_zero, zero = false;
	unsigned long word, *sp;
	struct stack_info stack_info = {0};
	unsigned long visit_mask = 0;

	if (dumped_before)
		return;

	dumped_before = true;

	FUNC3("unwind stack type:%d next_sp:%p mask:0x%lx graph_idx:%d\n",
			state->stack_info.type, state->stack_info.next_sp,
			state->stack_mask, state->graph_idx);

	for (sp = FUNC0(state->orig_sp, sizeof(long)); sp;
	     sp = FUNC0(stack_info.next_sp, sizeof(long))) {
		if (FUNC2(sp, state->task, &stack_info, &visit_mask))
			break;

		for (; sp < stack_info.end; sp++) {

			word = FUNC1(*sp);

			prev_zero = zero;
			zero = word == 0;

			if (zero) {
				if (!prev_zero)
					FUNC3("%p: %0*x ...\n",
							sp, BITS_PER_LONG/4, 0);
				continue;
			}

			FUNC3("%p: %0*lx (%pB)\n",
					sp, BITS_PER_LONG/4, word, (void *)word);
		}
	}
}