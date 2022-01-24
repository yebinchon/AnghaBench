#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int state; } ;
struct perf_event {TYPE_1__ hw; } ;
struct cpu_hw_events {int dummy; } ;

/* Variables and functions */
 int PERF_EF_UPDATE ; 
 int PERF_HES_STOPPED ; 
 int PERF_HES_UPTODATE ; 
 int FUNC0 (struct cpu_hw_events*,struct perf_event*) ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cpu_hw_events*,TYPE_1__*,int) ; 
 struct cpu_hw_events* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct perf_event *event, int flags)
{
	struct cpu_hw_events *cpuc = FUNC3(&cpu_hw_events);
	int idx = FUNC0(cpuc, event);

	if (!(event->hw.state & PERF_HES_STOPPED)) {
		FUNC2(cpuc, &event->hw, idx);
		event->hw.state |= PERF_HES_STOPPED;
	}

	if (!(event->hw.state & PERF_HES_UPTODATE) && (flags & PERF_EF_UPDATE)) {
		FUNC1(event, &event->hw, idx);
		event->hw.state |= PERF_HES_UPTODATE;
	}
}