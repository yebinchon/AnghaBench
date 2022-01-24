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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  machine_crash_nonpanic_core ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  waiting_for_crash_ipi ; 

void FUNC6(void)
{
	static int cpus_stopped;
	unsigned long msecs;

	if (cpus_stopped)
		return;

	FUNC1(&waiting_for_crash_ipi, FUNC3() - 1);
	FUNC5(machine_crash_nonpanic_core, NULL, false);
	msecs = 1000; /* Wait at most a second for the other cpus to stop */
	while ((FUNC0(&waiting_for_crash_ipi) > 0) && msecs) {
		FUNC2(1);
		msecs--;
	}
	if (FUNC0(&waiting_for_crash_ipi) > 0)
		FUNC4("Non-crashing CPUs did not react to IPI\n");

	cpus_stopped = 1;
}