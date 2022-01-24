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
struct hw_perf_event {int dummy; } ;
struct perf_event {int /*<<< orphan*/  pmu; struct hw_perf_event hw; } ;
struct cpu_hw_events {int n_events; int* current_idx; unsigned long idx_mask; int /*<<< orphan*/ * evtype; struct perf_event** event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_event*,struct hw_perf_event*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct cpu_hw_events* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct perf_event *event, int flags)
{
	struct cpu_hw_events *cpuc = FUNC6(&cpu_hw_events);
	struct hw_perf_event *hwc = &event->hw;
	unsigned long irq_flags;
	int j;

	FUNC4(event->pmu);
	FUNC2(irq_flags);

	for (j = 0; j < cpuc->n_events; j++) {
		if (event == cpuc->event[j]) {
			int idx = cpuc->current_idx[j];

			/* Shift remaining entries down into the existing
			 * slot.
			 */
			while (++j < cpuc->n_events) {
				cpuc->event[j - 1] = cpuc->event[j];
				cpuc->evtype[j - 1] = cpuc->evtype[j];
				cpuc->current_idx[j - 1] =
					cpuc->current_idx[j];
			}

			/* Absorb the final count and turn off the event. */
			FUNC0(event, hwc, idx, 0);
			FUNC3(event);

			cpuc->idx_mask &= ~(1UL<<idx);
			cpuc->n_events--;
			break;
		}
	}

	FUNC1(irq_flags);
	FUNC5(event->pmu);
}