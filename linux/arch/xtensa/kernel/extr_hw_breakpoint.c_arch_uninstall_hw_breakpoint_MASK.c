#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct perf_event {int dummy; } ;
struct arch_hw_breakpoint {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ SREG_DBREAKC ; 
 int /*<<< orphan*/  SREG_IBREAKENABLE ; 
 int /*<<< orphan*/  XCHAL_NUM_DBREAK ; 
 int /*<<< orphan*/  XCHAL_NUM_IBREAK ; 
 scalar_t__ XTENSA_BREAKPOINT_EXECUTE ; 
 int /*<<< orphan*/  bp_on_reg ; 
 struct arch_hw_breakpoint* FUNC0 (struct perf_event*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wp_on_reg ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC6(struct perf_event *bp)
{
	struct arch_hw_breakpoint *info = FUNC0(bp);
	int i;

	if (info->type == XTENSA_BREAKPOINT_EXECUTE) {
		unsigned long ibreakenable;

		/* Breakpoint */
		i = FUNC1(FUNC2(bp_on_reg), XCHAL_NUM_IBREAK, bp);
		if (i >= 0) {
			ibreakenable = FUNC3(SREG_IBREAKENABLE);
			FUNC4(ibreakenable & ~(1 << i),
				      SREG_IBREAKENABLE);
		}
	} else {
		/* Watchpoint */
		i = FUNC1(FUNC2(wp_on_reg), XCHAL_NUM_DBREAK, bp);
		if (i >= 0)
			FUNC5(0, SREG_DBREAKC + i);
	}
}