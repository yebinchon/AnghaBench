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
struct hw_perf_event {int idx; int state; } ;
struct perf_event {int /*<<< orphan*/  pmu; struct hw_perf_event hw; } ;
struct cpu_hw_events {int /*<<< orphan*/  used_mask; } ;
struct TYPE_2__ {int num_events; int /*<<< orphan*/  (* disable ) (struct hw_perf_event*,int) ;} ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  PERF_EF_RELOAD ; 
 int PERF_EF_START ; 
 int PERF_HES_STOPPED ; 
 int PERF_HES_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* sh_pmu ; 
 int /*<<< orphan*/  FUNC6 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hw_perf_event*,int) ; 
 struct cpu_hw_events* FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct perf_event *event, int flags)
{
	struct cpu_hw_events *cpuc = FUNC8(&cpu_hw_events);
	struct hw_perf_event *hwc = &event->hw;
	int idx = hwc->idx;
	int ret = -EAGAIN;

	FUNC4(event->pmu);

	if (FUNC1(idx, cpuc->used_mask)) {
		idx = FUNC2(cpuc->used_mask, sh_pmu->num_events);
		if (idx == sh_pmu->num_events)
			goto out;

		FUNC0(idx, cpuc->used_mask);
		hwc->idx = idx;
	}

	sh_pmu->disable(hwc, idx);

	event->hw.state = PERF_HES_UPTODATE | PERF_HES_STOPPED;
	if (flags & PERF_EF_START)
		FUNC6(event, PERF_EF_RELOAD);

	FUNC3(event);
	ret = 0;
out:
	FUNC5(event->pmu);
	return ret;
}