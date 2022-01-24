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
 unsigned long CMCI_POLL_INTERVAL ; 
#define  CMCI_STORM_ACTIVE 129 
 unsigned long CMCI_STORM_INTERVAL ; 
 int CMCI_STORM_NONE ; 
#define  CMCI_STORM_SUBSIDED 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmci_backoff_cnt ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  cmci_storm_on_cpus ; 
 int /*<<< orphan*/  cmci_storm_state ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

unsigned long FUNC9(unsigned long interval)
{
	if ((FUNC8(cmci_backoff_cnt) > 0) &&
	    (FUNC0(cmci_storm_state) == CMCI_STORM_ACTIVE)) {
		FUNC6();
		return CMCI_STORM_INTERVAL;
	}

	switch (FUNC0(cmci_storm_state)) {
	case CMCI_STORM_ACTIVE:

		/*
		 * We switch back to interrupt mode once the poll timer has
		 * silenced itself. That means no events recorded and the timer
		 * interval is back to our poll interval.
		 */
		FUNC1(cmci_storm_state, CMCI_STORM_SUBSIDED);
		if (!FUNC3(1, &cmci_storm_on_cpus))
			FUNC7("CMCI storm subsided: switching to interrupt mode\n");

		/* FALLTHROUGH */

	case CMCI_STORM_SUBSIDED:
		/*
		 * We wait for all CPUs to go back to SUBSIDED state. When that
		 * happens we switch back to interrupt mode.
		 */
		if (!FUNC2(&cmci_storm_on_cpus)) {
			FUNC1(cmci_storm_state, CMCI_STORM_NONE);
			FUNC5(true);
			FUNC4();
		}
		return CMCI_POLL_INTERVAL;
	default:

		/* We have shiny weather. Let the poll do whatever it thinks. */
		return interval;
	}
}