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
struct hw_perf_event {int state; unsigned long idx; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct cpu_hw_events {unsigned long idx_mask; scalar_t__ enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERFMON_CMD_ENABLE ; 
 int PERF_EF_RELOAD ; 
 int PERF_HES_STOPPED ; 
 int PERF_HES_UPTODATE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*,struct hw_perf_event*,unsigned long) ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 struct cpu_hw_events* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct perf_event *event, int flags)
{
	struct hw_perf_event *hwc = &event->hw;
	struct cpu_hw_events *cpuc = FUNC2(&cpu_hw_events);

	if (FUNC0(!(hwc->state & PERF_HES_STOPPED)))
		return;

	if (flags & PERF_EF_RELOAD) {
		FUNC0(!(hwc->state & PERF_HES_UPTODATE));
		FUNC1(event, hwc, hwc->idx);
	}

	hwc->state = 0;

	cpuc->idx_mask |= 1UL<<hwc->idx;
	if (cpuc->enabled)
		FUNC3(PERFMON_CMD_ENABLE, (1UL<<hwc->idx));
}