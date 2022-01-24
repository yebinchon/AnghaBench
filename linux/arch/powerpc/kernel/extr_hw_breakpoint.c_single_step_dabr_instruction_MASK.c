#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int dummy; } ;
struct perf_event {int dummy; } ;
struct die_args {struct pt_regs* regs; } ;
struct arch_hw_breakpoint {int type; } ;
struct TYPE_3__ {struct perf_event* last_hit_ubp; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;

/* Variables and functions */
 int HW_BRK_TYPE_EXTRANEOUS_IRQ ; 
 int NOTIFY_DONE ; 
 int NOTIFY_STOP ; 
 int /*<<< orphan*/  TIF_SINGLESTEP ; 
 int /*<<< orphan*/  FUNC0 (struct arch_hw_breakpoint*) ; 
 struct arch_hw_breakpoint* FUNC1 (struct perf_event*) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*,struct pt_regs*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct die_args *args)
{
	struct pt_regs *regs = args->regs;
	struct perf_event *bp = NULL;
	struct arch_hw_breakpoint *info;

	bp = current->thread.last_hit_ubp;
	/*
	 * Check if we are single-stepping as a result of a
	 * previous HW Breakpoint exception
	 */
	if (!bp)
		return NOTIFY_DONE;

	info = FUNC1(bp);

	/*
	 * We shall invoke the user-defined callback function in the single
	 * stepping handler to confirm to 'trigger-after-execute' semantics
	 */
	if (!(info->type & HW_BRK_TYPE_EXTRANEOUS_IRQ))
		FUNC2(bp, regs);

	FUNC0(info);
	current->thread.last_hit_ubp = NULL;

	/*
	 * If the process was being single-stepped by ptrace, let the
	 * other single-step actions occur (e.g. generate SIGTRAP).
	 */
	if (FUNC3(TIF_SINGLESTEP))
		return NOTIFY_DONE;

	return NOTIFY_STOP;
}