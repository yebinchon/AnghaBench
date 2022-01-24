#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  branch_sample_type; } ;
struct TYPE_4__ {int state; int /*<<< orphan*/  config; int /*<<< orphan*/  event_base; } ;
struct perf_event {int /*<<< orphan*/  pmu; TYPE_2__ attr; TYPE_1__ hw; } ;
struct cpu_hw_events {int n_events; int txn_flags; int /*<<< orphan*/  bhrb_filter; int /*<<< orphan*/  n_added; int /*<<< orphan*/ * events; int /*<<< orphan*/ * flags; struct perf_event** event; } ;
struct TYPE_6__ {int n_counter; int /*<<< orphan*/  (* bhrb_filter_map ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EAGAIN ; 
 int PERF_EF_START ; 
 int PERF_HES_STOPPED ; 
 int PERF_HES_UPTODATE ; 
 int PERF_PMU_TXN_ADD ; 
 scalar_t__ FUNC0 (struct perf_event**,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 
 scalar_t__ FUNC2 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct cpu_hw_events*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct perf_event*) ; 
 TYPE_3__* ppmu ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct cpu_hw_events* FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct perf_event *event, int ef_flags)
{
	struct cpu_hw_events *cpuhw;
	unsigned long flags;
	int n0;
	int ret = -EAGAIN;

	FUNC4(flags);
	FUNC5(event->pmu);

	/*
	 * Add the event to the list (if there is room)
	 * and check whether the total set is still feasible.
	 */
	cpuhw = FUNC10(&cpu_hw_events);
	n0 = cpuhw->n_events;
	if (n0 >= ppmu->n_counter)
		goto out;
	cpuhw->event[n0] = event;
	cpuhw->events[n0] = event->hw.config;
	cpuhw->flags[n0] = event->hw.event_base;

	/*
	 * This event may have been disabled/stopped in record_and_restart()
	 * because we exceeded the ->event_limit. If re-starting the event,
	 * clear the ->hw.state (STOPPED and UPTODATE flags), so the user
	 * notification is re-enabled.
	 */
	if (!(ef_flags & PERF_EF_START))
		event->hw.state = PERF_HES_STOPPED | PERF_HES_UPTODATE;
	else
		event->hw.state = 0;

	/*
	 * If group events scheduling transaction was started,
	 * skip the schedulability test here, it will be performed
	 * at commit time(->commit_txn) as a whole
	 */
	if (cpuhw->txn_flags & PERF_PMU_TXN_ADD)
		goto nocheck;

	if (FUNC0(cpuhw->event, cpuhw->flags, n0, 1))
		goto out;
	if (FUNC7(cpuhw, cpuhw->events, cpuhw->flags, n0 + 1))
		goto out;
	event->hw.config = cpuhw->events[n0];

nocheck:
	FUNC1(event);

	++cpuhw->n_events;
	++cpuhw->n_added;

	ret = 0;
 out:
	if (FUNC2(event)) {
		FUNC8(event);
		cpuhw->bhrb_filter = ppmu->bhrb_filter_map(
					event->attr.branch_sample_type);
	}

	FUNC6(event->pmu);
	FUNC3(flags);
	return ret;
}