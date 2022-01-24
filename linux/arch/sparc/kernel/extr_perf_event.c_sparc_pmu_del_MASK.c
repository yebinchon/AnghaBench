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
struct perf_event {int dummy; } ;
struct cpu_hw_events {int n_events; int /*<<< orphan*/ * current_idx; int /*<<< orphan*/ * events; struct perf_event** event; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_EF_UPDATE ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*,int /*<<< orphan*/ ) ; 
 struct cpu_hw_events* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct perf_event *event, int _flags)
{
	struct cpu_hw_events *cpuc = FUNC4(&cpu_hw_events);
	unsigned long flags;
	int i;

	FUNC1(flags);

	for (i = 0; i < cpuc->n_events; i++) {
		if (event == cpuc->event[i]) {
			/* Absorb the final count and turn off the
			 * event.
			 */
			FUNC3(event, PERF_EF_UPDATE);

			/* Shift remaining entries down into
			 * the existing slot.
			 */
			while (++i < cpuc->n_events) {
				cpuc->event[i - 1] = cpuc->event[i];
				cpuc->events[i - 1] = cpuc->events[i];
				cpuc->current_idx[i - 1] =
					cpuc->current_idx[i];
			}

			FUNC2(event);

			cpuc->n_events--;
			break;
		}
	}

	FUNC0(flags);
}