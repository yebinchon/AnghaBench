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
struct pt_regs {unsigned long dar; } ;
struct TYPE_2__ {unsigned long bp_addr; unsigned long bp_len; } ;
struct perf_event {scalar_t__ overflow_handler; TYPE_1__ attr; } ;
struct die_args {struct pt_regs* regs; } ;
struct arch_hw_breakpoint {int type; int /*<<< orphan*/  address; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PPC_8xx ; 
 int HW_BRK_TYPE_EXTRANEOUS_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int NOTIFY_DONE ; 
 int NOTIFY_STOP ; 
 int /*<<< orphan*/  FUNC1 (struct arch_hw_breakpoint*) ; 
 struct perf_event* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bp_per_reg ; 
 struct arch_hw_breakpoint* FUNC3 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event*,struct pt_regs*) ; 
 scalar_t__ ptrace_triggered ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct pt_regs*,struct perf_event*,int /*<<< orphan*/ ) ; 

int FUNC9(struct die_args *args)
{
	int rc = NOTIFY_STOP;
	struct perf_event *bp;
	struct pt_regs *regs = args->regs;
	struct arch_hw_breakpoint *info;
	unsigned long dar = regs->dar;

	/* Disable breakpoints during exception handling */
	FUNC4();

	/*
	 * The counter may be concurrently released but that can only
	 * occur from a call_rcu() path. We can then safely fetch
	 * the breakpoint, use its callback, touch its counter
	 * while we are in an rcu_read_lock() path.
	 */
	FUNC6();

	bp = FUNC2(bp_per_reg);
	if (!bp) {
		rc = NOTIFY_DONE;
		goto out;
	}
	info = FUNC3(bp);

	/*
	 * Return early after invoking user-callback function without restoring
	 * DABR if the breakpoint is from ptrace which always operates in
	 * one-shot mode. The ptrace-ed process will receive the SIGTRAP signal
	 * generated in do_dabr().
	 */
	if (bp->overflow_handler == ptrace_triggered) {
		FUNC5(bp, regs);
		rc = NOTIFY_DONE;
		goto out;
	}

	/*
	 * Verify if dar lies within the address range occupied by the symbol
	 * being watched to filter extraneous exceptions.  If it doesn't,
	 * we still need to single-step the instruction, but we don't
	 * generate an event.
	 */
	info->type &= ~HW_BRK_TYPE_EXTRANEOUS_IRQ;
	if (!((bp->attr.bp_addr <= dar) &&
	      (dar - bp->attr.bp_addr < bp->attr.bp_len)))
		info->type |= HW_BRK_TYPE_EXTRANEOUS_IRQ;

	if (!FUNC0(CONFIG_PPC_8xx) && !FUNC8(regs, bp, info->address))
		goto out;

	/*
	 * As a policy, the callback is invoked in a 'trigger-after-execute'
	 * fashion
	 */
	if (!(info->type & HW_BRK_TYPE_EXTRANEOUS_IRQ))
		FUNC5(bp, regs);

	FUNC1(info);
out:
	FUNC7();
	return rc;
}