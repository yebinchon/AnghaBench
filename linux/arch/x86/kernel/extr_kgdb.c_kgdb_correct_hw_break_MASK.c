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
struct TYPE_3__ {int disabled; int /*<<< orphan*/  bp_type; int /*<<< orphan*/  bp_len; int /*<<< orphan*/  bp_addr; } ;
struct perf_event {TYPE_1__ attr; } ;
struct arch_hw_breakpoint {int /*<<< orphan*/  type; int /*<<< orphan*/  len; int /*<<< orphan*/  address; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; int /*<<< orphan*/  len; int /*<<< orphan*/  addr; int /*<<< orphan*/  pev; int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 int HBP_NUM ; 
 int FUNC0 (struct perf_event*) ; 
 TYPE_2__* breakinfo ; 
 struct arch_hw_breakpoint* FUNC1 (struct perf_event*) ; 
 scalar_t__ dbg_is_early ; 
 int /*<<< orphan*/  early_dr7 ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct perf_event** FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(void)
{
	int breakno;

	for (breakno = 0; breakno < HBP_NUM; breakno++) {
		struct perf_event *bp;
		struct arch_hw_breakpoint *info;
		int val;
		int cpu = FUNC5();
		if (!breakinfo[breakno].enabled)
			continue;
		if (dbg_is_early) {
			FUNC6(breakinfo[breakno].addr, breakno);
			early_dr7 |= FUNC2(breakno,
						breakinfo[breakno].len,
						breakinfo[breakno].type);
			FUNC6(early_dr7, 7);
			continue;
		}
		bp = *FUNC4(breakinfo[breakno].pev, cpu);
		info = FUNC1(bp);
		if (bp->attr.disabled != 1)
			continue;
		bp->attr.bp_addr = breakinfo[breakno].addr;
		bp->attr.bp_len = breakinfo[breakno].len;
		bp->attr.bp_type = breakinfo[breakno].type;
		info->address = breakinfo[breakno].addr;
		info->len = breakinfo[breakno].len;
		info->type = breakinfo[breakno].type;
		val = FUNC0(bp);
		if (!val)
			bp->attr.disabled = 0;
	}
	if (!dbg_is_early)
		FUNC3();
}