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
struct pt_regs {int ARM_pc; } ;
struct perf_event {int /*<<< orphan*/  overflow_handler; } ;
struct arch_hw_breakpoint_ctrl {int len; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;
struct arch_hw_breakpoint {int trigger; TYPE_1__ step_ctrl; } ;

/* Variables and functions */
 scalar_t__ ARM_BASE_BCR ; 
 scalar_t__ ARM_BASE_BVR ; 
 int /*<<< orphan*/  bp_on_reg ; 
 int core_num_brps ; 
 struct arch_hw_breakpoint* FUNC0 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct arch_hw_breakpoint_ctrl*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (scalar_t__) ; 
 struct perf_event** FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(unsigned long unknown, struct pt_regs *regs)
{
	int i;
	u32 ctrl_reg, val, addr;
	struct perf_event *bp, **slots;
	struct arch_hw_breakpoint *info;
	struct arch_hw_breakpoint_ctrl ctrl;

	slots = FUNC9(bp_on_reg);

	/* The exception entry code places the amended lr in the PC. */
	addr = regs->ARM_pc;

	/* Check the currently installed breakpoints first. */
	for (i = 0; i < core_num_brps; ++i) {
		FUNC6();

		bp = slots[i];

		if (bp == NULL)
			goto unlock;

		info = FUNC0(bp);

		/* Check if the breakpoint value matches. */
		val = FUNC8(ARM_BASE_BVR + i);
		if (val != (addr & ~0x3))
			goto mismatch;

		/* Possible match, check the byte address select to confirm. */
		ctrl_reg = FUNC8(ARM_BASE_BCR + i);
		FUNC1(ctrl_reg, &ctrl);
		if ((1 << (addr & 0x3)) & ctrl.len) {
			info->trigger = addr;
			FUNC5("breakpoint fired: address = 0x%x\n", addr);
			FUNC4(bp, regs);
			if (!bp->overflow_handler)
				FUNC3(bp, addr);
			goto unlock;
		}

mismatch:
		/* If we're stepping a breakpoint, it can now be restored. */
		if (info->step_ctrl.enabled)
			FUNC2(bp);
unlock:
		FUNC7();
	}

	/* Handle any pending watchpoint single-step breakpoints. */
	FUNC10(addr);
}