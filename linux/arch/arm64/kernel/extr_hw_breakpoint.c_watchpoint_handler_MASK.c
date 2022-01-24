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
typedef  scalar_t__ u64 ;
typedef  void* u32 ;
struct pt_regs {int dummy; } ;
struct perf_event {int dummy; } ;
struct debug_info {int wps_disabled; int suspended_step; scalar_t__ bps_disabled; } ;
struct arch_hw_breakpoint_ctrl {int dummy; } ;
struct arch_hw_breakpoint {unsigned long trigger; } ;
struct TYPE_4__ {struct debug_info debug; } ;
struct TYPE_5__ {TYPE_1__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  AARCH64_DBG_REG_WCR ; 
 int /*<<< orphan*/  AARCH64_DBG_REG_WVR ; 
 unsigned int AARCH64_ESR_ACCESS_MASK ; 
 int ARM_KERNEL_STEP_ACTIVE ; 
 int ARM_KERNEL_STEP_NONE ; 
 int ARM_KERNEL_STEP_SUSPEND ; 
 int /*<<< orphan*/  DBG_ACTIVE_EL0 ; 
 int /*<<< orphan*/  DBG_ACTIVE_EL1 ; 
 int HW_BREAKPOINT_R ; 
 int HW_BREAKPOINT_W ; 
 int /*<<< orphan*/  TIF_SINGLESTEP ; 
 int core_num_wrps ; 
 struct arch_hw_breakpoint* FUNC0 (struct perf_event*) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC1 (void*,struct arch_hw_breakpoint_ctrl*) ; 
 scalar_t__ FUNC2 (unsigned long,scalar_t__,struct arch_hw_breakpoint_ctrl*) ; 
 int FUNC3 (struct perf_event*) ; 
 scalar_t__ FUNC4 (struct perf_event*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC7 (struct perf_event*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 void* FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stepping_kernel_bp ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 void* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 scalar_t__ FUNC15 (struct pt_regs*) ; 
 int /*<<< orphan*/ * wp_on_reg ; 

__attribute__((used)) static int FUNC16(unsigned long addr, unsigned int esr,
			      struct pt_regs *regs)
{
	int i, step = 0, *kernel_step, access, closest_match = 0;
	u64 min_dist = -1, dist;
	u32 ctrl_reg;
	u64 val;
	struct perf_event *wp, **slots;
	struct debug_info *debug_info;
	struct arch_hw_breakpoint *info;
	struct arch_hw_breakpoint_ctrl ctrl;

	slots = FUNC12(wp_on_reg);
	debug_info = &current->thread.debug;

	/*
	 * Find all watchpoints that match the reported address. If no exact
	 * match is found. Attribute the hit to the closest watchpoint.
	 */
	FUNC8();
	for (i = 0; i < core_num_wrps; ++i) {
		wp = slots[i];
		if (wp == NULL)
			continue;

		/*
		 * Check that the access type matches.
		 * 0 => load, otherwise => store
		 */
		access = (esr & AARCH64_ESR_ACCESS_MASK) ? HW_BREAKPOINT_W :
			 HW_BREAKPOINT_R;
		if (!(access & FUNC3(wp)))
			continue;

		/* Check if the watchpoint value and byte select match. */
		val = FUNC10(AARCH64_DBG_REG_WVR, i);
		ctrl_reg = FUNC10(AARCH64_DBG_REG_WCR, i);
		FUNC1(ctrl_reg, &ctrl);
		dist = FUNC2(addr, val, &ctrl);
		if (dist < min_dist) {
			min_dist = dist;
			closest_match = i;
		}
		/* Is this an exact match? */
		if (dist != 0)
			continue;

		info = FUNC0(wp);
		info->trigger = addr;
		FUNC7(wp, regs);

		/* Do we need to handle the stepping? */
		if (FUNC4(wp))
			step = 1;
	}
	if (min_dist > 0 && min_dist != -1) {
		/* No exact match found. */
		wp = slots[closest_match];
		info = FUNC0(wp);
		info->trigger = addr;
		FUNC7(wp, regs);

		/* Do we need to handle the stepping? */
		if (FUNC4(wp))
			step = 1;
	}
	FUNC9();

	if (!step)
		return 0;

	/*
	 * We always disable EL0 watchpoints because the kernel can
	 * cause these to fire via an unprivileged access.
	 */
	FUNC13(AARCH64_DBG_REG_WCR, DBG_ACTIVE_EL0, 0);

	if (FUNC15(regs)) {
		debug_info->wps_disabled = 1;

		/* If we're already stepping a breakpoint, just return. */
		if (debug_info->bps_disabled)
			return 0;

		if (FUNC11(TIF_SINGLESTEP))
			debug_info->suspended_step = 1;
		else
			FUNC14(current);
	} else {
		FUNC13(AARCH64_DBG_REG_WCR, DBG_ACTIVE_EL1, 0);
		kernel_step = FUNC12(&stepping_kernel_bp);

		if (*kernel_step != ARM_KERNEL_STEP_NONE)
			return 0;

		if (FUNC5()) {
			*kernel_step = ARM_KERNEL_STEP_SUSPEND;
		} else {
			*kernel_step = ARM_KERNEL_STEP_ACTIVE;
			FUNC6(regs);
		}
	}

	return 0;
}