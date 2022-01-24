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
struct rapl_pmu {int cpu; int /*<<< orphan*/  pmu; } ;

/* Variables and functions */
 struct rapl_pmu* FUNC0 (unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 
 int nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  rapl_cpu_mask ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 

__attribute__((used)) static int FUNC6(unsigned int cpu)
{
	struct rapl_pmu *pmu = FUNC0(cpu);
	int target;

	/* Check if exiting cpu is used for collecting rapl events */
	if (!FUNC3(cpu, &rapl_cpu_mask))
		return 0;

	pmu->cpu = -1;
	/* Find a new cpu to collect rapl events */
	target = FUNC1(FUNC5(cpu), cpu);

	/* Migrate rapl events to the new target */
	if (target < nr_cpu_ids) {
		FUNC2(target, &rapl_cpu_mask);
		pmu->cpu = target;
		FUNC4(pmu->pmu, cpu, target);
	}
	return 0;
}