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
struct perf_event {TYPE_1__ hw; } ;
struct cpu_hw_events {int n_limited; int* limited_hwidx; struct perf_event** limited_counter; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long,unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 

__attribute__((used)) static void FUNC4(struct cpu_hw_events *cpuhw,
				  unsigned long pmc5, unsigned long pmc6)
{
	struct perf_event *event;
	u64 val, prev;
	int i;

	for (i = 0; i < cpuhw->n_limited; ++i) {
		event = cpuhw->limited_counter[i];
		event->hw.idx = cpuhw->limited_hwidx[i];
		val = (event->hw.idx == 5) ? pmc5 : pmc6;
		prev = FUNC1(&event->hw.prev_count);
		if (FUNC0(prev, val))
			FUNC2(&event->hw.prev_count, val);
		FUNC3(event);
	}
}