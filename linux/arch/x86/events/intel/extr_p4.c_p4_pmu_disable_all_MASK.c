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
struct perf_event {int dummy; } ;
struct cpu_hw_events {int /*<<< orphan*/  active_mask; struct perf_event** events; } ;
struct TYPE_2__ {int num_counters; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC0 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct cpu_hw_events* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ x86_pmu ; 

__attribute__((used)) static void FUNC4(void)
{
	struct cpu_hw_events *cpuc = FUNC3(&cpu_hw_events);
	int idx;

	for (idx = 0; idx < x86_pmu.num_counters; idx++) {
		struct perf_event *event = cpuc->events[idx];
		if (!FUNC2(idx, cpuc->active_mask))
			continue;
		FUNC0(event);
	}

	FUNC1();
}