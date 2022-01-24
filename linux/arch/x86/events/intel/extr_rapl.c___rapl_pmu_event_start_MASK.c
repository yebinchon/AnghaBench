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
struct rapl_pmu {int n_active; int /*<<< orphan*/  active_list; } ;
struct TYPE_2__ {int state; int /*<<< orphan*/  prev_count; } ;
struct perf_event {TYPE_1__ hw; int /*<<< orphan*/  active_entry; } ;

/* Variables and functions */
 int PERF_HES_STOPPED ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC4 (struct rapl_pmu*) ; 

__attribute__((used)) static void FUNC5(struct rapl_pmu *pmu,
				   struct perf_event *event)
{
	if (FUNC0(!(event->hw.state & PERF_HES_STOPPED)))
		return;

	event->hw.state = 0;

	FUNC1(&event->active_entry, &pmu->active_list);

	FUNC2(&event->hw.prev_count, FUNC3(event));

	pmu->n_active++;
	if (pmu->n_active == 1)
		FUNC4(pmu);
}