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
typedef  int u32 ;
struct perf_event_attr {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  target; } ;
struct perf_event {TYPE_1__ hw; } ;
struct TYPE_4__ {int len; scalar_t__ type; } ;
struct arch_hw_breakpoint {int address; TYPE_2__ ctrl; } ;

/* Variables and functions */
 int ARM_BREAKPOINT_LEN_1 ; 
 int ARM_BREAKPOINT_LEN_2 ; 
 int ARM_BREAKPOINT_LEN_8 ; 
 scalar_t__ ARM_BREAKPOINT_LOAD ; 
 scalar_t__ ARM_BREAKPOINT_STORE ; 
 int EINVAL ; 
 int ENODEV ; 
 int EPERM ; 
 int FUNC0 (struct perf_event*,struct perf_event_attr const*,struct arch_hw_breakpoint*) ; 
 scalar_t__ FUNC1 (struct arch_hw_breakpoint*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(struct perf_event *bp,
			     const struct perf_event_attr *attr,
			     struct arch_hw_breakpoint *hw)
{
	int ret = 0;
	u32 offset, alignment_mask = 0x3;

	/* Ensure that we are in monitor debug mode. */
	if (!FUNC5())
		return -ENODEV;

	/* Build the arch_hw_breakpoint. */
	ret = FUNC0(bp, attr, hw);
	if (ret)
		goto out;

	/* Check address alignment. */
	if (hw->ctrl.len == ARM_BREAKPOINT_LEN_8)
		alignment_mask = 0x7;
	offset = hw->address & alignment_mask;
	switch (offset) {
	case 0:
		/* Aligned */
		break;
	case 1:
	case 2:
		/* Allow halfword watchpoints and breakpoints. */
		if (hw->ctrl.len == ARM_BREAKPOINT_LEN_2)
			break;
		/* Else, fall through */
	case 3:
		/* Allow single byte watchpoint. */
		if (hw->ctrl.len == ARM_BREAKPOINT_LEN_1)
			break;
		/* Else, fall through */
	default:
		ret = -EINVAL;
		goto out;
	}

	hw->address &= ~alignment_mask;
	hw->ctrl.len <<= offset;

	if (FUNC4(bp)) {
		/*
		 * Mismatch breakpoints are required for single-stepping
		 * breakpoints.
		 */
		if (!FUNC2())
			return -EINVAL;

		/* We don't allow mismatch breakpoints in kernel space. */
		if (FUNC1(hw))
			return -EPERM;

		/*
		 * Per-cpu breakpoints are not supported by our stepping
		 * mechanism.
		 */
		if (!bp->hw.target)
			return -EINVAL;

		/*
		 * We only support specific access types if the fsr
		 * reports them.
		 */
		if (!FUNC3() &&
		    (hw->ctrl.type == ARM_BREAKPOINT_LOAD ||
		     hw->ctrl.type == ARM_BREAKPOINT_STORE))
			return -EINVAL;
	}

out:
	return ret;
}