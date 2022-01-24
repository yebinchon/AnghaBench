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
 int /*<<< orphan*/  COUNTON ; 
 int NR_LOOPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  count_count_start ; 
 int /*<<< orphan*/  count_count_stop ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  initcount ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 

void FUNC12(int cpu)
{
	int i;
	unsigned long flags;

	FUNC10("Synchronize counters for CPU %u: ", cpu);

	FUNC5(flags);

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
			FUNC6();
		FUNC2(&count_count_stop, 0);
		FUNC11();

		/* Let the slave writes its count register */
		FUNC0(&count_count_start);

		/* Count will be initialised to current timer */
		if (i == 1)
			initcount = FUNC3();

		/*
		 * Everyone initialises count in the last loop:
		 */
		if (i == NR_LOOPS-1)
			FUNC7(initcount);

		/*
		 * Wait for slave to leave the synchronization point:
		 */
		while (FUNC1(&count_count_stop) != 1)
			FUNC6();
		FUNC2(&count_count_start, 0);
		FUNC11();
		FUNC0(&count_count_stop);
	}
	/* Arrange for an interrupt in a short while */
	FUNC8(COUNTON);

	FUNC4(flags);

	/*
	 * i386 code reported the skew here, but the
	 * count registers were almost certainly out of sync
	 * so no point in alarming people
	 */
	FUNC9("done.\n");
}