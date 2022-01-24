#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct imc_pmu_ref {scalar_t__ refc; } ;
struct TYPE_3__ {int /*<<< orphan*/  event_init; } ;
struct TYPE_4__ {TYPE_1__ pmu; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  OPAL_IMC_COUNTERS_CORE ; 
 int /*<<< orphan*/  core_imc_cpumask ; 
 TYPE_2__* core_imc_pmu ; 
 struct imc_pmu_ref* core_imc_refc ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,unsigned int,int) ; 
 unsigned int threads_per_core ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(unsigned int cpu)
{
	unsigned int core_id;
	int ncpu;
	struct imc_pmu_ref *ref;

	/*
	 * clear this cpu out of the mask, if not present in the mask,
	 * don't bother doing anything.
	 */
	if (!FUNC4(cpu, &core_imc_cpumask))
		return 0;

	/*
	 * Check whether core_imc is registered. We could end up here
	 * if the cpuhotplug callback registration fails. i.e, callback
	 * invokes the offline path for all sucessfully registered cpus.
	 * At this stage, core_imc pmu will not be registered and we
	 * should return here.
	 *
	 * We return with a zero since this is not an offline failure.
	 * And cpuhp_setup_state() returns the actual failure reason
	 * to the caller, which inturn will call the cleanup routine.
	 */
	if (!core_imc_pmu->pmu.event_init)
		return 0;

	/* Find any online cpu in that core except the current "cpu" */
	ncpu = FUNC2(FUNC0(cpu));

	if (FUNC8(ncpu == cpu))
		ncpu = FUNC1(FUNC0(cpu), cpu);

	if (ncpu >= 0 && ncpu < nr_cpu_ids) {
		FUNC3(ncpu, &core_imc_cpumask);
		FUNC7(&core_imc_pmu->pmu, cpu, ncpu);
	} else {
		/*
		 * If this is the last cpu in this core then, skip taking refernce
		 * count mutex lock for this core and directly zero "refc" for
		 * this core.
		 */
		FUNC6(OPAL_IMC_COUNTERS_CORE,
				       FUNC5(cpu));
		core_id = cpu / threads_per_core;
		ref = &core_imc_refc[core_id];
		if (!ref)
			return -EINVAL;

		ref->refc = 0;
	}
	return 0;
}