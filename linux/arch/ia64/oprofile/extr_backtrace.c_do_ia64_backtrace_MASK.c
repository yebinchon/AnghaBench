#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_long ;
struct unw_frame_info {int dummy; } ;
struct switch_stack {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  frame; int /*<<< orphan*/  depth; scalar_t__ regs; } ;
typedef  TYPE_1__ ia64_backtrace_t ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct switch_stack*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct unw_frame_info *info, void *vdata)
{
	ia64_backtrace_t *bt = vdata;
	struct switch_stack *sw;
	int count = 0;
	u_long pc, sp;

	sw = (struct switch_stack *)(info+1);
	/* padding from unw_init_running */
	sw = (struct switch_stack *)(((unsigned long)sw + 15) & ~15);

	FUNC4(&bt->frame, current, sw);

	/* skip over interrupt frame and oprofile calls */
	do {
		FUNC3(&bt->frame, &sp);
		if (sp >= (u_long)bt->regs)
			break;
		if (!FUNC0(bt))
			return;
	} while (count++ < 200);

	/* finally, grab the actual sample */
	while (bt->depth-- && FUNC0(bt)) {
		FUNC2(&bt->frame, &pc);
		FUNC1(pc);
		if (FUNC5(&bt->frame)) {
			/*
			 * Interrupt received on kernel stack; this can
			 * happen when timer interrupt fires while processing
			 * a softirq from the tail end of a hardware interrupt
			 * which interrupted a system call.  Don't laugh, it
			 * happens!  Splice the backtrace into two parts to
			 * avoid spurious cycles in the gprof output.
			 */
			/* TODO: split rather than drop the 2nd half */
			break;
		}
	}
}