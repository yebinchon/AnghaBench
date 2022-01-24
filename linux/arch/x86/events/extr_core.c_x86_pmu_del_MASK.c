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
struct perf_event {int dummy; } ;
struct cpu_hw_events {int txn_flags; int n_events; int n_added; int /*<<< orphan*/ ** event_constraint; struct perf_event** event_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* del ) (struct perf_event*) ;int /*<<< orphan*/  (* put_event_constraints ) (struct cpu_hw_events*,struct perf_event*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_EF_UPDATE ; 
 int PERF_PMU_TXN_ADD ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpu_hw_events*,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 
 struct cpu_hw_events* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__ x86_pmu ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct perf_event *event, int flags)
{
	struct cpu_hw_events *cpuc = FUNC4(&cpu_hw_events);
	int i;

	/*
	 * If we're called during a txn, we only need to undo x86_pmu.add.
	 * The events never got scheduled and ->cancel_txn will truncate
	 * the event_list.
	 *
	 * XXX assumes any ->del() called during a TXN will only be on
	 * an event added during that same TXN.
	 */
	if (cpuc->txn_flags & PERF_PMU_TXN_ADD)
		goto do_del;

	/*
	 * Not a TXN, therefore cleanup properly.
	 */
	FUNC5(event, PERF_EF_UPDATE);

	for (i = 0; i < cpuc->n_events; i++) {
		if (event == cpuc->event_list[i])
			break;
	}

	if (FUNC0(i == cpuc->n_events)) /* called ->del() without ->add() ? */
		return;

	/* If we have a newly added event; make sure to decrease n_added. */
	if (i >= cpuc->n_events - cpuc->n_added)
		--cpuc->n_added;

	if (x86_pmu.put_event_constraints)
		x86_pmu.put_event_constraints(cpuc, event);

	/* Delete the array entry. */
	while (++i < cpuc->n_events) {
		cpuc->event_list[i-1] = cpuc->event_list[i];
		cpuc->event_constraint[i-1] = cpuc->event_constraint[i];
	}
	cpuc->event_constraint[i-1] = NULL;
	--cpuc->n_events;

	FUNC1(event);

do_del:
	if (x86_pmu.del) {
		/*
		 * This is after x86_pmu_stop(); so we disable LBRs after any
		 * event can need them etc..
		 */
		x86_pmu.del(event);
	}
}