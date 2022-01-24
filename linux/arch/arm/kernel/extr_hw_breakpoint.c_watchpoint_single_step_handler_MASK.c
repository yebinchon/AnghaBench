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
struct perf_event {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  enabled; } ;
struct arch_hw_breakpoint {unsigned long trigger; TYPE_1__ step_ctrl; } ;

/* Variables and functions */
 int core_num_wrps ; 
 struct arch_hw_breakpoint* FUNC0 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct perf_event** FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wp_on_reg ; 

__attribute__((used)) static void FUNC5(unsigned long pc)
{
	int i;
	struct perf_event *wp, **slots;
	struct arch_hw_breakpoint *info;

	slots = FUNC4(wp_on_reg);

	for (i = 0; i < core_num_wrps; ++i) {
		FUNC2();

		wp = slots[i];

		if (wp == NULL)
			goto unlock;

		info = FUNC0(wp);
		if (!info->step_ctrl.enabled)
			goto unlock;

		/*
		 * Restore the original watchpoint if we've completed the
		 * single-step.
		 */
		if (info->trigger != pc)
			FUNC1(wp);

unlock:
		FUNC3();
	}
}