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
 int PERF_EF_RELOAD ; 
 int PERF_HES_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct cpu_hw_events*,struct perf_event*) ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cpu_hw_events*,TYPE_1__*,int) ; 
 struct cpu_hw_events* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct perf_event *event, int flags)
{
	struct cpu_hw_events *cpuc = FUNC5(&cpu_hw_events);
	int idx = FUNC1(cpuc, event);

	if (flags & PERF_EF_RELOAD) {
		FUNC0(!(event->hw.state & PERF_HES_UPTODATE));
		FUNC3(event, &event->hw, idx);
	}

	event->hw.state = 0;

	FUNC4(cpuc, &event->hw, idx);

	FUNC2(event);
}