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
struct pmu_hw_events {int /*<<< orphan*/ ** events; } ;
struct hw_perf_event {size_t idx; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  hw_events; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_EF_UPDATE ; 
 TYPE_1__ csky_pmu ; 
 int /*<<< orphan*/  FUNC0 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 
 struct pmu_hw_events* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct perf_event *event, int flags)
{
	struct pmu_hw_events *hw_events = FUNC2(csky_pmu.hw_events);
	struct hw_perf_event *hwc = &event->hw;

	FUNC0(event, PERF_EF_UPDATE);

	hw_events->events[hwc->idx] = NULL;

	FUNC1(event);
}