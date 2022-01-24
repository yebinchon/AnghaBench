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
 int /*<<< orphan*/  cpu_mask ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 int nr_cpumask_bits ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int,int) ; 
 int /*<<< orphan*/  pmu_class ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 

__attribute__((used)) static int FUNC5(unsigned int cpu)
{
	int target;

	if (!FUNC2(cpu, &cpu_mask))
		return 0;

	/*
	 * Find a new CPU on the same compute unit, if was set in cpumask
	 * and still some CPUs on compute unit. Then migrate event and
	 * context to new CPU.
	 */
	target = FUNC0(FUNC4(cpu), cpu);
	if (target < nr_cpumask_bits) {
		FUNC1(target, &cpu_mask);
		FUNC3(&pmu_class, cpu, target);
	}
	return 0;
}