#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cpumask {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  counter_mem_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  core_imc_cpumask ; 
 int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_1__* core_imc_pmu ; 
 struct cpumask* FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (struct cpumask*,struct cpumask const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int) ; 

__attribute__((used)) static int FUNC6(unsigned int cpu)
{
	const struct cpumask *l_cpumask;
	static struct cpumask tmp_mask;
	int ret = 0;

	/* Get the cpumask for this core */
	l_cpumask = FUNC1(cpu);

	/* If a cpu for this core is already set, then, don't do anything */
	if (FUNC2(&tmp_mask, l_cpumask, &core_imc_cpumask))
		return 0;

	if (!FUNC4(cpu)) {
		ret = FUNC0(cpu, core_imc_pmu->counter_mem_size);
		if (ret) {
			FUNC5("core_imc memory allocation for cpu %d failed\n", cpu);
			return ret;
		}
	}

	/* set the cpu in the mask */
	FUNC3(cpu, &core_imc_cpumask);
	return 0;
}