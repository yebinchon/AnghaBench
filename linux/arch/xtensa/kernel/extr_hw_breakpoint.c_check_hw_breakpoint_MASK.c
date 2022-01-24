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
struct pt_regs {int debugcause; scalar_t__ pc; } ;
struct TYPE_2__ {scalar_t__ bp_addr; int /*<<< orphan*/  disabled; } ;
struct perf_event {TYPE_1__ attr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int DEBUGCAUSE_DBNUM_MASK ; 
 int DEBUGCAUSE_DBNUM_SHIFT ; 
 int /*<<< orphan*/  DEBUGCAUSE_DBREAK_BIT ; 
 int /*<<< orphan*/  DEBUGCAUSE_IBREAK_BIT ; 
 int ENOENT ; 
 scalar_t__ SREG_DBREAKC ; 
 int /*<<< orphan*/  TIF_DB_DISABLED ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int XCHAL_NUM_DBREAK ; 
 int XCHAL_NUM_IBREAK ; 
 int /*<<< orphan*/  bp_on_reg ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct perf_event** FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct pt_regs*) ; 
 int /*<<< orphan*/  wp_on_reg ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC7(struct pt_regs *regs)
{
	if (regs->debugcause & FUNC0(DEBUGCAUSE_IBREAK_BIT)) {
		int i;
		struct perf_event **bp = FUNC4(bp_on_reg);

		for (i = 0; i < XCHAL_NUM_IBREAK; ++i) {
			if (bp[i] && !bp[i]->attr.disabled &&
			    regs->pc == bp[i]->attr.bp_addr)
				FUNC2(bp[i], regs);
		}
		return 0;
	} else if (regs->debugcause & FUNC0(DEBUGCAUSE_DBREAK_BIT)) {
		struct perf_event **bp = FUNC4(wp_on_reg);
		int dbnum = (regs->debugcause & DEBUGCAUSE_DBNUM_MASK) >>
			DEBUGCAUSE_DBNUM_SHIFT;

		if (dbnum < XCHAL_NUM_DBREAK && bp[dbnum]) {
			if (FUNC5(regs)) {
				FUNC2(bp[dbnum], regs);
			} else {
				FUNC3(TIF_DB_DISABLED);
				FUNC6(0, SREG_DBREAKC + dbnum);
			}
		} else {
			FUNC1(1,
				  "Wrong/unconfigured DBNUM reported in DEBUGCAUSE: %d\n",
				  dbnum);
		}
		return 0;
	}
	return -ENOENT;
}