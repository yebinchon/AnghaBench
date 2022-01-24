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
struct pmu {int dummy; } ;
struct cpu_hw_events {int txn_flags; int n_events; int /*<<< orphan*/  events; int /*<<< orphan*/  event; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int PERF_PMU_TXN_ADD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC2 (struct pmu*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sparc_pmu ; 
 struct cpu_hw_events* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct pmu *pmu)
{
	struct cpu_hw_events *cpuc = FUNC4(&cpu_hw_events);
	int n;

	if (!sparc_pmu)
		return -EINVAL;

	FUNC0(!cpuc->txn_flags);	/* no txn in flight */

	if (cpuc->txn_flags & ~PERF_PMU_TXN_ADD) {
		cpuc->txn_flags = 0;
		return 0;
	}

	n = cpuc->n_events;
	if (FUNC1(cpuc->event, 0, n))
		return -EINVAL;
	if (FUNC3(cpuc->event, cpuc->events, n))
		return -EAGAIN;

	cpuc->txn_flags = 0;
	FUNC2(pmu);
	return 0;
}