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
struct cpumask {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPI_CPU_STOP ; 
 unsigned long USEC_PER_SEC ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct cpumask*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpumask*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cpumask*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct cpumask*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

void FUNC8(void)
{
	unsigned long timeout;
	struct cpumask mask;

	FUNC1(&mask, cpu_online_mask);
	FUNC0(FUNC6(), &mask);
	if (!FUNC2(&mask))
		FUNC5(&mask, IPI_CPU_STOP);

	/* Wait up to one second for other CPUs to stop */
	timeout = USEC_PER_SEC;
	while (FUNC3() > 1 && timeout--)
		FUNC7(1);

	if (FUNC3() > 1)
		FUNC4("SMP: failed to stop secondary CPUs\n");
}