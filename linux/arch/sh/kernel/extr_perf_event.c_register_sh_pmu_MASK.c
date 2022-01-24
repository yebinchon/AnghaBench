#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sh_pmu {scalar_t__ num_events; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  capabilities; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUHP_PERF_SUPERH ; 
 int EBUSY ; 
 scalar_t__ MAX_HWEVENTS ; 
 int /*<<< orphan*/  PERF_PMU_CAP_NO_INTERRUPT ; 
 int /*<<< orphan*/  PERF_TYPE_RAW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__ pmu ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 struct sh_pmu* sh_pmu ; 
 int /*<<< orphan*/  sh_pmu_prepare_cpu ; 

int FUNC4(struct sh_pmu *_pmu)
{
	if (sh_pmu)
		return -EBUSY;
	sh_pmu = _pmu;

	FUNC3("Performance Events: %s support registered\n", _pmu->name);

	/*
	 * All of the on-chip counters are "limited", in that they have
	 * no interrupts, and are therefore unable to do sampling without
	 * further work and timer assistance.
	 */
	pmu.capabilities |= PERF_PMU_CAP_NO_INTERRUPT;

	FUNC0(_pmu->num_events > MAX_HWEVENTS);

	FUNC2(&pmu, "cpu", PERF_TYPE_RAW);
	FUNC1(CPUHP_PERF_SUPERH, "PERF_SUPERH", sh_pmu_prepare_cpu,
			  NULL);
	return 0;
}