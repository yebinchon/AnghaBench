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
typedef  unsigned long u32 ;
struct pt_regs {int dummy; } ;
struct TYPE_3__ {unsigned long bp_addr; } ;
struct perf_event {TYPE_1__ attr; } ;
struct arch_hw_breakpoint_ctrl {int len; } ;
struct TYPE_4__ {scalar_t__ len; } ;
struct arch_hw_breakpoint {unsigned long trigger; TYPE_2__ ctrl; } ;

/* Variables and functions */
 scalar_t__ ARM_BASE_WCR ; 
 scalar_t__ ARM_BASE_WVR ; 
 scalar_t__ ARM_BREAKPOINT_LEN_8 ; 
 scalar_t__ ARM_DEBUG_ARCH_V7_1 ; 
 unsigned int ARM_FSR_ACCESS_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int HW_BREAKPOINT_R ; 
 int HW_BREAKPOINT_W ; 
 int core_num_wrps ; 
 struct arch_hw_breakpoint* FUNC1 (struct perf_event*) ; 
 scalar_t__ debug_arch ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,struct arch_hw_breakpoint_ctrl*) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC6 (struct pt_regs*) ; 
 scalar_t__ FUNC7 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC8 (struct perf_event*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC9 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 unsigned long FUNC12 (scalar_t__) ; 
 struct perf_event** FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wp_on_reg ; 

__attribute__((used)) static void FUNC14(unsigned long addr, unsigned int fsr,
			       struct pt_regs *regs)
{
	int i, access;
	u32 val, ctrl_reg, alignment_mask;
	struct perf_event *wp, **slots;
	struct arch_hw_breakpoint *info;
	struct arch_hw_breakpoint_ctrl ctrl;

	slots = FUNC13(wp_on_reg);

	for (i = 0; i < core_num_wrps; ++i) {
		FUNC10();

		wp = slots[i];

		if (wp == NULL)
			goto unlock;

		info = FUNC1(wp);
		/*
		 * The DFAR is an unknown value on debug architectures prior
		 * to 7.1. Since we only allow a single watchpoint on these
		 * older CPUs, we can set the trigger to the lowest possible
		 * faulting address.
		 */
		if (debug_arch < ARM_DEBUG_ARCH_V7_1) {
			FUNC0(i > 0);
			info->trigger = wp->attr.bp_addr;
		} else {
			if (info->ctrl.len == ARM_BREAKPOINT_LEN_8)
				alignment_mask = 0x7;
			else
				alignment_mask = 0x3;

			/* Check if the watchpoint value matches. */
			val = FUNC12(ARM_BASE_WVR + i);
			if (val != (addr & ~alignment_mask))
				goto unlock;

			/* Possible match, check the byte address select. */
			ctrl_reg = FUNC12(ARM_BASE_WCR + i);
			FUNC3(ctrl_reg, &ctrl);
			if (!((1 << (addr & alignment_mask)) & ctrl.len))
				goto unlock;

			/* Check that the access type matches. */
			if (FUNC2()) {
				access = (fsr & ARM_FSR_ACCESS_MASK) ?
					  HW_BREAKPOINT_W : HW_BREAKPOINT_R;
				if (!(access & FUNC5(wp)))
					goto unlock;
			}

			/* We have a winner. */
			info->trigger = addr;
		}

		FUNC9("watchpoint fired: address = 0x%x\n", info->trigger);
		FUNC8(wp, regs);

		/*
		 * If no overflow handler is present, insert a temporary
		 * mismatch breakpoint so we can single-step over the
		 * watchpoint trigger.
		 */
		if (FUNC7(wp))
			FUNC4(wp, FUNC6(regs));

unlock:
		FUNC11();
	}
}