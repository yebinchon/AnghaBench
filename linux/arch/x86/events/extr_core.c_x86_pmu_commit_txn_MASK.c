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
struct pmu {int dummy; } ;
struct cpu_hw_events {int txn_flags; int n_events; int /*<<< orphan*/  assign; } ;
struct TYPE_2__ {int (* schedule_events ) (struct cpu_hw_events*,int,int*) ;} ;

/* Variables and functions */
 int EAGAIN ; 
 int PERF_PMU_TXN_ADD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int X86_PMC_IDX_MAX ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pmu*) ; 
 int FUNC3 (struct cpu_hw_events*,int,int*) ; 
 struct cpu_hw_events* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__ x86_pmu ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct pmu *pmu)
{
	struct cpu_hw_events *cpuc = FUNC4(&cpu_hw_events);
	int assign[X86_PMC_IDX_MAX];
	int n, ret;

	FUNC0(!cpuc->txn_flags);	/* no txn in flight */

	if (cpuc->txn_flags & ~PERF_PMU_TXN_ADD) {
		cpuc->txn_flags = 0;
		return 0;
	}

	n = cpuc->n_events;

	if (!FUNC5())
		return -EAGAIN;

	ret = x86_pmu.schedule_events(cpuc, n, assign);
	if (ret)
		return ret;

	/*
	 * copy new assignment, now we know it is possible
	 * will be used by hw_perf_enable()
	 */
	FUNC1(cpuc->assign, assign, n*sizeof(int));

	cpuc->txn_flags = 0;
	FUNC2(pmu);
	return 0;
}