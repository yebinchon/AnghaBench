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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(unsigned long __loops)
{
	/*
	 * Note: Due to unsigned math, cr16 rollovers shouldn't be
	 * a problem here. However, on 32 bit, we need to make sure
	 * we don't pass in too big a value. The current default
	 * value of MAX_UDELAY_MS should help prevent this.
	 */
	u32 bclock, now, loops = __loops;
	int cpu;

	FUNC2();
	cpu = FUNC4();
	bclock = FUNC1(16);
	for (;;) {
		now = FUNC1(16);
		if ((now - bclock) >= loops)
			break;

		/* Allow RT tasks to run */
		FUNC3();
		asm volatile("	nop\n");
		FUNC0();
		FUNC2();

		/*
		 * It is possible that we moved to another CPU, and
		 * since CR16's are per-cpu we need to calculate
		 * that. The delay must guarantee that we wait "at
		 * least" the amount of time. Being moved to another
		 * CPU could make the wait longer but we just need to
		 * make sure we waited long enough. Rebalance the
		 * counter for this CPU.
		 */
		if (FUNC5(cpu != FUNC4())) {
			loops -= (now - bclock);
			cpu = FUNC4();
			bclock = FUNC1(16);
		}
	}
	FUNC3();
}