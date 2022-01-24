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
 int /*<<< orphan*/  cpu_online_mask ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  l2x0_pmu ; 
 unsigned int nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  pmu_cpu ; 

__attribute__((used)) static int FUNC4(unsigned int cpu)
{
	unsigned int target;

	if (!FUNC2(cpu, &pmu_cpu))
		return 0;

	target = FUNC0(cpu_online_mask, cpu);
	if (target >= nr_cpu_ids)
		return 0;

	FUNC3(l2x0_pmu, cpu, target);
	FUNC1(target, &pmu_cpu);

	return 0;
}