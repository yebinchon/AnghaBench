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
 int /*<<< orphan*/  OPAL_IMC_COUNTERS_NEST ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (struct cpumask*,struct cpumask const*,int /*<<< orphan*/ *) ; 
 struct cpumask* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  nest_imc_cpumask ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(unsigned int cpu)
{
	const struct cpumask *l_cpumask;
	static struct cpumask tmp_mask;
	int res;

	/* Get the cpumask of this node */
	l_cpumask = FUNC2(FUNC0(cpu));

	/*
	 * If this is not the first online CPU on this node, then
	 * just return.
	 */
	if (FUNC1(&tmp_mask, l_cpumask, &nest_imc_cpumask))
		return 0;

	/*
	 * If this is the first online cpu on this node
	 * disable the nest counters by making an OPAL call.
	 */
	res = FUNC5(OPAL_IMC_COUNTERS_NEST,
				     FUNC4(cpu));
	if (res)
		return res;

	/* Make this CPU the designated target for counter collection */
	FUNC3(cpu, &nest_imc_cpumask);
	return 0;
}