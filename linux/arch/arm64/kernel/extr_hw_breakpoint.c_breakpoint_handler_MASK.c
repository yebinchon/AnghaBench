#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  void* u32 ;
struct pt_regs {int dummy; } ;
struct perf_event {int dummy; } ;
struct debug_info {int bps_disabled; int suspended_step; scalar_t__ wps_disabled; } ;
struct arch_hw_breakpoint_ctrl {int len; } ;
struct TYPE_7__ {int trigger; } ;
struct TYPE_5__ {struct debug_info debug; } ;
struct TYPE_6__ {TYPE_1__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  AARCH64_DBG_REG_BCR ; 
 int /*<<< orphan*/  AARCH64_DBG_REG_BVR ; 
 int ARM_KERNEL_STEP_ACTIVE ; 
 int ARM_KERNEL_STEP_NONE ; 
 int ARM_KERNEL_STEP_SUSPEND ; 
 int /*<<< orphan*/  DBG_ACTIVE_EL0 ; 
 int /*<<< orphan*/  DBG_ACTIVE_EL1 ; 
 int /*<<< orphan*/  TIF_SINGLESTEP ; 
 int /*<<< orphan*/ * bp_on_reg ; 
 int core_num_brps ; 
 TYPE_4__* FUNC0 (struct perf_event*) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC1 (void*,struct arch_hw_breakpoint_ctrl*) ; 
 int FUNC2 (struct pt_regs*) ; 
 scalar_t__ FUNC3 (struct perf_event*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_event*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 void* FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stepping_kernel_bp ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 void* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 scalar_t__ FUNC14 (struct pt_regs*) ; 

__attribute__((used)) static int FUNC15(unsigned long unused, unsigned int esr,
			      struct pt_regs *regs)
{
	int i, step = 0, *kernel_step;
	u32 ctrl_reg;
	u64 addr, val;
	struct perf_event *bp, **slots;
	struct debug_info *debug_info;
	struct arch_hw_breakpoint_ctrl ctrl;

	slots = FUNC11(bp_on_reg);
	addr = FUNC2(regs);
	debug_info = &current->thread.debug;

	for (i = 0; i < core_num_brps; ++i) {
		FUNC7();

		bp = slots[i];

		if (bp == NULL)
			goto unlock;

		/* Check if the breakpoint value matches. */
		val = FUNC9(AARCH64_DBG_REG_BVR, i);
		if (val != (addr & ~0x3))
			goto unlock;

		/* Possible match, check the byte address select to confirm. */
		ctrl_reg = FUNC9(AARCH64_DBG_REG_BCR, i);
		FUNC1(ctrl_reg, &ctrl);
		if (!((1 << (addr & 0x3)) & ctrl.len))
			goto unlock;

		FUNC0(bp)->trigger = addr;
		FUNC6(bp, regs);

		/* Do we need to handle the stepping? */
		if (FUNC3(bp))
			step = 1;
unlock:
		FUNC8();
	}

	if (!step)
		return 0;

	if (FUNC14(regs)) {
		debug_info->bps_disabled = 1;
		FUNC12(AARCH64_DBG_REG_BCR, DBG_ACTIVE_EL0, 0);

		/* If we're already stepping a watchpoint, just return. */
		if (debug_info->wps_disabled)
			return 0;

		if (FUNC10(TIF_SINGLESTEP))
			debug_info->suspended_step = 1;
		else
			FUNC13(current);
	} else {
		FUNC12(AARCH64_DBG_REG_BCR, DBG_ACTIVE_EL1, 0);
		kernel_step = FUNC11(&stepping_kernel_bp);

		if (*kernel_step != ARM_KERNEL_STEP_NONE)
			return 0;

		if (FUNC4()) {
			*kernel_step = ARM_KERNEL_STEP_SUSPEND;
		} else {
			*kernel_step = ARM_KERNEL_STEP_ACTIVE;
			FUNC5(regs);
		}
	}

	return 0;
}