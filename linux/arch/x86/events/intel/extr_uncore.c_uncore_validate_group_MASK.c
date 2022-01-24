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
struct TYPE_2__ {int /*<<< orphan*/  idx; } ;
struct perf_event {TYPE_1__ hw; struct perf_event* group_leader; } ;
struct intel_uncore_pmu {int /*<<< orphan*/  type; } ;
struct intel_uncore_box {int n_events; struct intel_uncore_pmu* pmu; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 int /*<<< orphan*/  FUNC0 (struct intel_uncore_box*) ; 
 struct intel_uncore_box* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct intel_uncore_box*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct intel_uncore_box*,struct perf_event*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct intel_uncore_pmu *pmu,
				struct perf_event *event)
{
	struct perf_event *leader = event->group_leader;
	struct intel_uncore_box *fake_box;
	int ret = -EINVAL, n;

	/* The free running counter is always active. */
	if (FUNC4(event->hw.idx))
		return 0;

	fake_box = FUNC1(pmu->type, NUMA_NO_NODE);
	if (!fake_box)
		return -ENOMEM;

	fake_box->pmu = pmu;
	/*
	 * the event is not yet connected with its
	 * siblings therefore we must first collect
	 * existing siblings, then add the new event
	 * before we can simulate the scheduling
	 */
	n = FUNC3(fake_box, leader, true);
	if (n < 0)
		goto out;

	fake_box->n_events = n;
	n = FUNC3(fake_box, event, false);
	if (n < 0)
		goto out;

	fake_box->n_events = n;

	ret = FUNC2(fake_box, NULL, n);
out:
	FUNC0(fake_box);
	return ret;
}