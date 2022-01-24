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
typedef  unsigned long u64 ;
typedef  int u32 ;

/* Variables and functions */
 unsigned long ULONG_MAX ; 
 int USEC_PER_MSEC ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 unsigned long FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static unsigned long FUNC6(u32 latch, unsigned long ms, int loopmin)
{
	u64 tsc, t1, t2, delta;
	unsigned long tscmin, tscmax;
	int pitcnt;

	if (!FUNC2()) {
		/*
		 * Relies on tsc_early_delay_calibrate() to have given us semi
		 * usable udelay(), wait for the same 50ms we would have with
		 * the PIT loop below.
		 */
		FUNC5(10 * USEC_PER_MSEC);
		FUNC5(10 * USEC_PER_MSEC);
		FUNC5(10 * USEC_PER_MSEC);
		FUNC5(10 * USEC_PER_MSEC);
		FUNC5(10 * USEC_PER_MSEC);
		return ULONG_MAX;
	}

	/* Set the Gate high, disable speaker */
	FUNC4((FUNC3(0x61) & ~0x02) | 0x01, 0x61);

	/*
	 * Setup CTC channel 2* for mode 0, (interrupt on terminal
	 * count mode), binary count. Set the latch register to 50ms
	 * (LSB then MSB) to begin countdown.
	 */
	FUNC4(0xb0, 0x43);
	FUNC4(latch & 0xff, 0x42);
	FUNC4(latch >> 8, 0x42);

	tsc = t1 = t2 = FUNC1();

	pitcnt = 0;
	tscmax = 0;
	tscmin = ULONG_MAX;
	while ((FUNC3(0x61) & 0x20) == 0) {
		t2 = FUNC1();
		delta = t2 - tsc;
		tsc = t2;
		if ((unsigned long) delta < tscmin)
			tscmin = (unsigned int) delta;
		if ((unsigned long) delta > tscmax)
			tscmax = (unsigned int) delta;
		pitcnt++;
	}

	/*
	 * Sanity checks:
	 *
	 * If we were not able to read the PIT more than loopmin
	 * times, then we have been hit by a massive SMI
	 *
	 * If the maximum is 10 times larger than the minimum,
	 * then we got hit by an SMI as well.
	 */
	if (pitcnt < loopmin || tscmax > 10 * tscmin)
		return ULONG_MAX;

	/* Calculate the PIT value */
	delta = t2 - t1;
	FUNC0(delta, ms);
	return delta;
}