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
struct perf_event {struct perf_event* group_leader; } ;
struct cpu_hw_events {int n_events; } ;
struct TYPE_2__ {int (* schedule_events ) (struct cpu_hw_events*,int,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct cpu_hw_events*) ; 
 int FUNC1 (struct cpu_hw_events*) ; 
 struct cpu_hw_events* FUNC2 () ; 
 int FUNC3 (struct cpu_hw_events*,struct perf_event*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cpu_hw_events*) ; 
 int FUNC5 (struct cpu_hw_events*,int,int /*<<< orphan*/ *) ; 
 TYPE_1__ x86_pmu ; 

__attribute__((used)) static int FUNC6(struct perf_event *event)
{
	struct perf_event *leader = event->group_leader;
	struct cpu_hw_events *fake_cpuc;
	int ret = -EINVAL, n;

	fake_cpuc = FUNC2();
	if (FUNC0(fake_cpuc))
		return FUNC1(fake_cpuc);
	/*
	 * the event is not yet connected with its
	 * siblings therefore we must first collect
	 * existing siblings, then add the new event
	 * before we can simulate the scheduling
	 */
	n = FUNC3(fake_cpuc, leader, true);
	if (n < 0)
		goto out;

	fake_cpuc->n_events = n;
	n = FUNC3(fake_cpuc, event, false);
	if (n < 0)
		goto out;

	fake_cpuc->n_events = 0;
	ret = x86_pmu.schedule_events(fake_cpuc, n, NULL);

out:
	FUNC4(fake_cpuc);
	return ret;
}