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

/* Variables and functions */
 scalar_t__ COUNTON ; 
 int NR_LOOPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  count_count_start ; 
 int /*<<< orphan*/  count_count_stop ; 
 scalar_t__ initcount ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

void FUNC12(int cpu)
{
	int i;
	unsigned long flags;

	FUNC7("Synchronize counters for CPU %u: ", cpu);

	FUNC4(flags);

	/*
	 * We loop a few times to get a primed instruction cache,
	 * then the last pass is more or less synchronised and
	 * the master and slaves each set their cycle counters to a known
	 * value all at once. This reduces the chance of having random offsets
	 * between the processors, and guarantees that the maximum
	 * delay between the cycle counters is never bigger than
	 * the latency of information-passing (cachelines) between
	 * two CPUs.
	 */

	for (i = 0; i < NR_LOOPS; i++) {
		/* slaves loop on '!= 2' */
		while (FUNC1(&count_count_start) != 1)
			FUNC5();
		FUNC2(&count_count_stop, 0);
		FUNC9();

		/* Let the slave writes its count register */
		FUNC0(&count_count_start);

		/* Count will be initialised to current timer */
		if (i == 1)
			initcount = FUNC8();

		/*
		 * Everyone initialises count in the last loop:
		 */
		if (i == NR_LOOPS-1)
			FUNC11(initcount);

		/*
		 * Wait for slave to leave the synchronization point:
		 */
		while (FUNC1(&count_count_stop) != 1)
			FUNC5();
		FUNC2(&count_count_start, 0);
		FUNC9();
		FUNC0(&count_count_stop);
	}
	/* Arrange for an interrupt in a short while */
	FUNC10(FUNC8() + COUNTON);

	FUNC3(flags);

	/*
	 * i386 code reported the skew here, but the
	 * count registers were almost certainly out of sync
	 * so no point in alarming people
	 */
	FUNC6("done.\n");
}