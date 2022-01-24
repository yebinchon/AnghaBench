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
struct perf_event {int dummy; } ;
struct arch_hw_breakpoint {int dummy; } ;
struct TYPE_3__ {struct perf_event* last_hit_ubp; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct arch_hw_breakpoint*) ; 
 int /*<<< orphan*/  bp_per_reg ; 
 struct arch_hw_breakpoint* FUNC1 (struct perf_event*) ; 
 TYPE_2__* current ; 
 struct perf_event** FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct perf_event *bp)
{
	struct arch_hw_breakpoint *info = FUNC1(bp);
	struct perf_event **slot = FUNC2(&bp_per_reg);

	*slot = bp;

	/*
	 * Do not install DABR values if the instruction must be single-stepped.
	 * If so, DABR will be populated in single_step_dabr_instruction().
	 */
	if (current->thread.last_hit_ubp != bp)
		FUNC0(info);

	return 0;
}