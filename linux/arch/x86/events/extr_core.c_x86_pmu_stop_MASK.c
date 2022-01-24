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
struct hw_perf_event {size_t idx; int state; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct cpu_hw_events {int /*<<< orphan*/ ** events; int /*<<< orphan*/  active_mask; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disable ) (struct perf_event*) ;} ;

/* Variables and functions */
 int PERF_EF_UPDATE ; 
 int PERF_HES_STOPPED ; 
 int PERF_HES_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*) ; 
 scalar_t__ FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 struct cpu_hw_events* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event*) ; 
 TYPE_1__ x86_pmu ; 

void FUNC6(struct perf_event *event, int flags)
{
	struct cpu_hw_events *cpuc = FUNC4(&cpu_hw_events);
	struct hw_perf_event *hwc = &event->hw;

	if (FUNC3(hwc->idx, cpuc->active_mask)) {
		x86_pmu.disable(event);
		FUNC1(hwc->idx, cpuc->active_mask);
		cpuc->events[hwc->idx] = NULL;
		FUNC0(hwc->state & PERF_HES_STOPPED);
		hwc->state |= PERF_HES_STOPPED;
	}

	if ((flags & PERF_EF_UPDATE) && !(hwc->state & PERF_HES_UPTODATE)) {
		/*
		 * Drain the remaining delta count out of a event
		 * that we are disabling:
		 */
		FUNC5(event);
		hwc->state |= PERF_HES_UPTODATE;
	}
}