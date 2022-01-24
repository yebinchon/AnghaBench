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
struct unwind_state {int dummy; } ;
struct pt_regs {unsigned long ip; scalar_t__ sp; } ;
struct perf_callchain_entry_ctx {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* is_in_guest ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC0 (struct perf_callchain_entry_ctx*,unsigned long) ; 
 TYPE_1__* perf_guest_cbs ; 
 scalar_t__ FUNC1 (struct pt_regs*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct unwind_state*) ; 
 unsigned long FUNC4 (struct unwind_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct unwind_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct unwind_state*,int /*<<< orphan*/ ,struct pt_regs*,void*) ; 

void
FUNC7(struct perf_callchain_entry_ctx *entry, struct pt_regs *regs)
{
	struct unwind_state state;
	unsigned long addr;

	if (perf_guest_cbs && perf_guest_cbs->is_in_guest()) {
		/* TODO: We don't support guest os callchain now */
		return;
	}

	if (FUNC0(entry, regs->ip))
		return;

	if (FUNC1(regs))
		FUNC6(&state, current, regs, NULL);
	else
		FUNC6(&state, current, NULL, (void *)regs->sp);

	for (; !FUNC3(&state); FUNC5(&state)) {
		addr = FUNC4(&state);
		if (!addr || FUNC0(entry, addr))
			return;
	}
}