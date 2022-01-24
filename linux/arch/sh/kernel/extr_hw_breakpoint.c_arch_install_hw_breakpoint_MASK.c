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
struct arch_hw_breakpoint {int dummy; } ;
struct TYPE_2__ {int num_events; int /*<<< orphan*/  (* enable ) (struct arch_hw_breakpoint*,int) ;int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (int,char*) ; 
 int /*<<< orphan*/ * bp_per_reg ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct arch_hw_breakpoint* FUNC2 (struct perf_event*) ; 
 TYPE_1__* sh_ubc ; 
 int /*<<< orphan*/  FUNC3 (struct arch_hw_breakpoint*,int) ; 
 struct perf_event** FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct perf_event *bp)
{
	struct arch_hw_breakpoint *info = FUNC2(bp);
	int i;

	for (i = 0; i < sh_ubc->num_events; i++) {
		struct perf_event **slot = FUNC4(&bp_per_reg[i]);

		if (!*slot) {
			*slot = bp;
			break;
		}
	}

	if (FUNC0(i == sh_ubc->num_events, "Can't find any breakpoint slot"))
		return -EBUSY;

	FUNC1(sh_ubc->clk);
	sh_ubc->enable(info, i);

	return 0;
}