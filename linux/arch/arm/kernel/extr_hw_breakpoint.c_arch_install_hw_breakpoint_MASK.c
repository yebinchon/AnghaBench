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
typedef  int u32 ;
struct perf_event {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; scalar_t__ enabled; } ;
struct arch_hw_breakpoint {int address; int trigger; TYPE_1__ ctrl; TYPE_1__ step_ctrl; } ;

/* Variables and functions */
 int ARM_BASE_BCR ; 
 int ARM_BASE_BVR ; 
 int ARM_BASE_WCR ; 
 int ARM_BASE_WVR ; 
 scalar_t__ ARM_BREAKPOINT_EXECUTE ; 
 int EBUSY ; 
 int /*<<< orphan*/  bp_on_reg ; 
 int core_num_brps ; 
 int core_num_wrps ; 
 struct arch_hw_breakpoint* FUNC0 (struct perf_event*) ; 
 int FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct perf_event** FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wp_on_reg ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

int FUNC5(struct perf_event *bp)
{
	struct arch_hw_breakpoint *info = FUNC0(bp);
	struct perf_event **slot, **slots;
	int i, max_slots, ctrl_base, val_base;
	u32 addr, ctrl;

	addr = info->address;
	ctrl = FUNC1(info->ctrl) | 0x1;

	if (info->ctrl.type == ARM_BREAKPOINT_EXECUTE) {
		/* Breakpoint */
		ctrl_base = ARM_BASE_BCR;
		val_base = ARM_BASE_BVR;
		slots = FUNC3(bp_on_reg);
		max_slots = core_num_brps;
	} else {
		/* Watchpoint */
		ctrl_base = ARM_BASE_WCR;
		val_base = ARM_BASE_WVR;
		slots = FUNC3(wp_on_reg);
		max_slots = core_num_wrps;
	}

	for (i = 0; i < max_slots; ++i) {
		slot = &slots[i];

		if (!*slot) {
			*slot = bp;
			break;
		}
	}

	if (i == max_slots) {
		FUNC2("Can't find any breakpoint slot\n");
		return -EBUSY;
	}

	/* Override the breakpoint data with the step data. */
	if (info->step_ctrl.enabled) {
		addr = info->trigger & ~0x3;
		ctrl = FUNC1(info->step_ctrl);
		if (info->ctrl.type != ARM_BREAKPOINT_EXECUTE) {
			i = 0;
			ctrl_base = ARM_BASE_BCR + core_num_brps;
			val_base = ARM_BASE_BVR + core_num_brps;
		}
	}

	/* Setup the address register. */
	FUNC4(val_base + i, addr);

	/* Setup the control register. */
	FUNC4(ctrl_base + i, ctrl);
	return 0;
}