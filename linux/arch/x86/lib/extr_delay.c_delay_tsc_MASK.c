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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(unsigned long __loops)
{
	u64 bclock, now, loops = __loops;
	int cpu;

	FUNC0();
	cpu = FUNC4();
	bclock = FUNC2();
	for (;;) {
		now = FUNC2();
		if ((now - bclock) >= loops)
			break;

		/* Allow RT tasks to run */
		FUNC1();
		FUNC3();
		FUNC0();

		/*
		 * It is possible that we moved to another CPU, and
		 * since TSC's are per-cpu we need to calculate
		 * that. The delay must guarantee that we wait "at
		 * least" the amount of time. Being moved to another
		 * CPU could make the wait longer but we just need to
		 * make sure we waited long enough. Rebalance the
		 * counter for this CPU.
		 */
		if (FUNC5(cpu != FUNC4())) {
			loops -= (now - bclock);
			cpu = FUNC4();
			bclock = FUNC2();
		}
	}
	FUNC1();
}