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
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  XCHAL_NUM_DBREAK ; 
 int /*<<< orphan*/  XCHAL_NUM_IBREAK ; 
 scalar_t__ XTENSA_BREAKPOINT_EXECUTE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct perf_event*) ; 
 int /*<<< orphan*/  bp_on_reg ; 
 TYPE_1__* FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wp_on_reg ; 

int FUNC5(struct perf_event *bp)
{
	int i;

	if (FUNC1(bp)->type == XTENSA_BREAKPOINT_EXECUTE) {
		/* Breakpoint */
		i = FUNC0(FUNC4(bp_on_reg), XCHAL_NUM_IBREAK, bp);
		if (i < 0)
			return i;
		FUNC3(i, bp);

	} else {
		/* Watchpoint */
		i = FUNC0(FUNC4(wp_on_reg), XCHAL_NUM_DBREAK, bp);
		if (i < 0)
			return i;
		FUNC2(i, bp);
	}
	return 0;
}