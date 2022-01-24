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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct clocksource {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOC_IRQREQA ; 
 int /*<<< orphan*/  IOC_T0CNTH ; 
 int /*<<< orphan*/  IOC_T0CNTL ; 
 int /*<<< orphan*/  IOC_T0LATCH ; 
 scalar_t__ RPC_LATCH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ioc_time ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 

__attribute__((used)) static u64 FUNC5(struct clocksource *cs)
{
	unsigned int count1, count2, status;
	unsigned long flags;
	u32 ticks;

	FUNC4(flags);
	FUNC2 (0, IOC_T0LATCH);
	FUNC0 ();
	count1 = FUNC1(IOC_T0CNTL) | (FUNC1(IOC_T0CNTH) << 8);
	FUNC0 ();
	status = FUNC1(IOC_IRQREQA);
	FUNC0 ();
	FUNC2 (0, IOC_T0LATCH);
	FUNC0 ();
	count2 = FUNC1(IOC_T0CNTL) | (FUNC1(IOC_T0CNTH) << 8);
	ticks = ioc_time + RPC_LATCH - count2;
	FUNC3(flags);

	if (count2 < count1) {
		/*
		 * The timer has not reloaded between reading count1 and
		 * count2, check whether an interrupt was actually pending.
		 */
		if (status & (1 << 5))
			ticks += RPC_LATCH;
	} else if (count2 > count1) {
		/*
		 * The timer has reloaded, so count2 indicates the new
		 * count since the wrap.  The interrupt would not have
		 * been processed, so add the missed ticks.
		 */
		ticks += RPC_LATCH;
	}

	return ticks;
}