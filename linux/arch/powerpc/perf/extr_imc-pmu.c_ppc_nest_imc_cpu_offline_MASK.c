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
struct imc_pmu_ref {scalar_t__ refc; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  OPAL_IMC_COUNTERS_NEST ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (struct cpumask const*,unsigned int) ; 
 int FUNC2 (struct cpumask const*) ; 
 struct cpumask* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 struct imc_pmu_ref* FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,int) ; 
 int /*<<< orphan*/  nest_imc_cpumask ; 
 int /*<<< orphan*/  nest_pmus ; 
 int nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(unsigned int cpu)
{
	int nid, target = -1;
	const struct cpumask *l_cpumask;
	struct imc_pmu_ref *ref;

	/*
	 * Check in the designated list for this cpu. Dont bother
	 * if not one of them.
	 */
	if (!FUNC5(cpu, &nest_imc_cpumask))
		return 0;

	/*
	 * Check whether nest_imc is registered. We could end up here if the
	 * cpuhotplug callback registration fails. i.e, callback invokes the
	 * offline path for all successfully registered nodes. At this stage,
	 * nest_imc pmu will not be registered and we should return here.
	 *
	 * We return with a zero since this is not an offline failure. And
	 * cpuhp_setup_state() returns the actual failure reason to the caller,
	 * which in turn will call the cleanup routine.
	 */
	if (!nest_pmus)
		return 0;

	/*
	 * Now that this cpu is one of the designated,
	 * find a next cpu a) which is online and b) in same chip.
	 */
	nid = FUNC0(cpu);
	l_cpumask = FUNC3(nid);
	target = FUNC2(l_cpumask);

	/*
	 * If this(target) is the last cpu in the cpumask for this chip,
	 * check for any possible online cpu in the chip.
	 */
	if (FUNC10(target == cpu))
		target = FUNC1(l_cpumask, cpu);

	/*
	 * Update the cpumask with the target cpu and
	 * migrate the context if needed
	 */
	if (target >= 0 && target < nr_cpu_ids) {
		FUNC4(target, &nest_imc_cpumask);
		FUNC8(cpu, target);
	} else {
		FUNC9(OPAL_IMC_COUNTERS_NEST,
				       FUNC6(cpu));
		/*
		 * If this is the last cpu in this chip then, skip the reference
		 * count mutex lock and make the reference count on this chip zero.
		 */
		ref = FUNC7(cpu);
		if (!ref)
			return -EINVAL;

		ref->refc = 0;
	}
	return 0;
}