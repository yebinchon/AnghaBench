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
typedef  int /*<<< orphan*/  cpumask_t ;

/* Variables and functions */
 int /*<<< orphan*/  IPI_CPU_STOP ; 
 scalar_t__ SYSTEM_RUNNING ; 
 unsigned long USEC_PER_SEC ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ system_state ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

void FUNC10(void)
{
	unsigned long timeout;

	if (FUNC3() > 1) {
		cpumask_t mask;

		FUNC1(&mask, cpu_online_mask);
		FUNC0(FUNC8(), &mask);

		if (system_state <= SYSTEM_RUNNING)
			FUNC4("SMP: stopping secondary CPUs\n");
		FUNC7(&mask, IPI_CPU_STOP);
	}

	/* Wait up to one second for other CPUs to stop */
	timeout = USEC_PER_SEC;
	while (FUNC3() > 1 && timeout--)
		FUNC9(1);

	if (FUNC3() > 1)
		FUNC5("SMP: failed to stop secondary CPUs %*pbl\n",
			   FUNC2(cpu_online_mask));

	FUNC6();
}