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
struct hw_perf_event {int idx; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct cpu_hw_events {int /*<<< orphan*/  used_mask; int /*<<< orphan*/ ** events; } ;
struct TYPE_2__ {int num_counters; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_EF_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 TYPE_1__ mipspmu ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 
 struct cpu_hw_events* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct perf_event *event, int flags)
{
	struct cpu_hw_events *cpuc = FUNC4(&cpu_hw_events);
	struct hw_perf_event *hwc = &event->hw;
	int idx = hwc->idx;

	FUNC0(idx < 0 || idx >= mipspmu.num_counters);

	FUNC2(event, PERF_EF_UPDATE);
	cpuc->events[idx] = NULL;
	FUNC1(idx, cpuc->used_mask);

	FUNC3(event);
}