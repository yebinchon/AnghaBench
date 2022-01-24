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
 int /*<<< orphan*/  count_count_start ; 
 int /*<<< orphan*/  count_count_stop ; 
 int /*<<< orphan*/  initcount ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(int cpu)
{
	int i;

	/*
	 * Not every cpu is online at the time this gets called,
	 * so we first wait for the master to say everyone is ready
	 */

	for (i = 0; i < NR_LOOPS; i++) {
		FUNC0(&count_count_start);
		while (FUNC1(&count_count_start) != 2)
			FUNC2();

		/*
		 * Everyone initialises count in the last loop:
		 */
		if (i == NR_LOOPS-1)
			FUNC5(initcount);

		FUNC0(&count_count_stop);
		while (FUNC1(&count_count_stop) != 2)
			FUNC2();
	}
	/* Arrange for an interrupt in a short while */
	FUNC4(FUNC3() + COUNTON);
}