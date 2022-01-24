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
typedef  unsigned long u64 ;
struct TYPE_2__ {int idx; int /*<<< orphan*/  prev_count; } ;
struct perf_event {int /*<<< orphan*/  count; TYPE_1__ hw; } ;
struct cpu_hw_events {int n_limited; struct perf_event** limited_counter; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct cpu_hw_events *cpuhw,
				    unsigned long pmc5, unsigned long pmc6)
{
	struct perf_event *event;
	u64 val, prev, delta;
	int i;

	for (i = 0; i < cpuhw->n_limited; ++i) {
		event = cpuhw->limited_counter[i];
		if (!event->hw.idx)
			continue;
		val = (event->hw.idx == 5) ? pmc5 : pmc6;
		prev = FUNC2(&event->hw.prev_count);
		event->hw.idx = 0;
		delta = FUNC0(prev, val);
		if (delta)
			FUNC1(delta, &event->count);
	}
}