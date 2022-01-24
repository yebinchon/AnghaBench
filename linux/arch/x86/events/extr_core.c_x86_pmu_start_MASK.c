#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int idx; int state; } ;
struct perf_event {TYPE_1__ hw; } ;
struct cpu_hw_events {int /*<<< orphan*/  running; int /*<<< orphan*/  active_mask; struct perf_event** events; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* enable ) (struct perf_event*) ;} ;

/* Variables and functions */
 int PERF_EF_RELOAD ; 
 int PERF_HES_STOPPED ; 
 int PERF_HES_UPTODATE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 
 struct cpu_hw_events* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event*) ; 
 TYPE_2__ x86_pmu ; 

__attribute__((used)) static void FUNC6(struct perf_event *event, int flags)
{
	struct cpu_hw_events *cpuc = FUNC4(&cpu_hw_events);
	int idx = event->hw.idx;

	if (FUNC0(!(event->hw.state & PERF_HES_STOPPED)))
		return;

	if (FUNC0(idx == -1))
		return;

	if (flags & PERF_EF_RELOAD) {
		FUNC0(!(event->hw.state & PERF_HES_UPTODATE));
		FUNC5(event);
	}

	event->hw.state = 0;

	cpuc->events[idx] = event;
	FUNC1(idx, cpuc->active_mask);
	FUNC1(idx, cpuc->running);
	x86_pmu.enable(event);
	FUNC2(event);
}