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
struct hw_perf_event {int idx; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct event_constraint {int flags; unsigned long* idxmsk; int /*<<< orphan*/  weight; } ;
struct cpu_hw_events {int n_events; int txn_flags; struct event_constraint** event_constraint; struct perf_event** event_list; TYPE_1__* excl_cntrs; int /*<<< orphan*/  is_fake; scalar_t__ n_txn; } ;
struct TYPE_4__ {int num_counters; int /*<<< orphan*/  (* stop_scheduling ) (struct cpu_hw_events*) ;int /*<<< orphan*/  (* put_event_constraints ) (struct cpu_hw_events*,struct perf_event*) ;int /*<<< orphan*/  (* commit_scheduling ) (struct cpu_hw_events*,int,int) ;struct event_constraint* (* get_event_constraints ) (struct cpu_hw_events*,int,struct perf_event*) ;int /*<<< orphan*/  (* start_scheduling ) (struct cpu_hw_events*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  exclusive_present; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int PERF_PMU_TXN_ADD ; 
 int PERF_X86_EVENT_DYNAMIC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int X86_PMC_IDX_MAX ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long*,int) ; 
 scalar_t__ FUNC5 () ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct event_constraint**,int,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct cpu_hw_events*) ; 
 struct event_constraint* FUNC10 (struct cpu_hw_events*,int,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC11 (struct cpu_hw_events*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct cpu_hw_events*,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC13 (struct cpu_hw_events*) ; 
 scalar_t__ FUNC14 (int,unsigned long*) ; 
 TYPE_2__ x86_pmu ; 

int FUNC15(struct cpu_hw_events *cpuc, int n, int *assign)
{
	struct event_constraint *c;
	unsigned long used_mask[FUNC0(X86_PMC_IDX_MAX)];
	struct perf_event *e;
	int n0, i, wmin, wmax, unsched = 0;
	struct hw_perf_event *hwc;

	FUNC4(used_mask, X86_PMC_IDX_MAX);

	/*
	 * Compute the number of events already present; see x86_pmu_add(),
	 * validate_group() and x86_pmu_commit_txn(). For the former two
	 * cpuc->n_events hasn't been updated yet, while for the latter
	 * cpuc->n_txn contains the number of events added in the current
	 * transaction.
	 */
	n0 = cpuc->n_events;
	if (cpuc->txn_flags & PERF_PMU_TXN_ADD)
		n0 -= cpuc->n_txn;

	if (x86_pmu.start_scheduling)
		x86_pmu.start_scheduling(cpuc);

	for (i = 0, wmin = X86_PMC_IDX_MAX, wmax = 0; i < n; i++) {
		c = cpuc->event_constraint[i];

		/*
		 * Previously scheduled events should have a cached constraint,
		 * while new events should not have one.
		 */
		FUNC2((c && i >= n0) || (!c && i < n0));

		/*
		 * Request constraints for new events; or for those events that
		 * have a dynamic constraint -- for those the constraint can
		 * change due to external factors (sibling state, allow_tfa).
		 */
		if (!c || (c->flags & PERF_X86_EVENT_DYNAMIC)) {
			c = x86_pmu.get_event_constraints(cpuc, i, cpuc->event_list[i]);
			cpuc->event_constraint[i] = c;
		}

		wmin = FUNC7(wmin, c->weight);
		wmax = FUNC6(wmax, c->weight);
	}

	/*
	 * fastpath, try to reuse previous register
	 */
	for (i = 0; i < n; i++) {
		hwc = &cpuc->event_list[i]->hw;
		c = cpuc->event_constraint[i];

		/* never assigned */
		if (hwc->idx == -1)
			break;

		/* constraint still honored */
		if (!FUNC14(hwc->idx, c->idxmsk))
			break;

		/* not already used */
		if (FUNC14(hwc->idx, used_mask))
			break;

		FUNC3(hwc->idx, used_mask);
		if (assign)
			assign[i] = hwc->idx;
	}

	/* slow path */
	if (i != n) {
		int gpmax = x86_pmu.num_counters;

		/*
		 * Do not allow scheduling of more than half the available
		 * generic counters.
		 *
		 * This helps avoid counter starvation of sibling thread by
		 * ensuring at most half the counters cannot be in exclusive
		 * mode. There is no designated counters for the limits. Any
		 * N/2 counters can be used. This helps with events with
		 * specific counter constraints.
		 */
		if (FUNC5() && !cpuc->is_fake &&
		    FUNC1(cpuc->excl_cntrs->exclusive_present))
			gpmax /= 2;

		unsched = FUNC8(cpuc->event_constraint, n, wmin,
					     wmax, gpmax, assign);
	}

	/*
	 * In case of success (unsched = 0), mark events as committed,
	 * so we do not put_constraint() in case new events are added
	 * and fail to be scheduled
	 *
	 * We invoke the lower level commit callback to lock the resource
	 *
	 * We do not need to do all of this in case we are called to
	 * validate an event group (assign == NULL)
	 */
	if (!unsched && assign) {
		for (i = 0; i < n; i++) {
			e = cpuc->event_list[i];
			if (x86_pmu.commit_scheduling)
				x86_pmu.commit_scheduling(cpuc, i, assign[i]);
		}
	} else {
		for (i = n0; i < n; i++) {
			e = cpuc->event_list[i];

			/*
			 * release events that failed scheduling
			 */
			if (x86_pmu.put_event_constraints)
				x86_pmu.put_event_constraints(cpuc, e);

			cpuc->event_constraint[i] = NULL;
		}
	}

	if (x86_pmu.stop_scheduling)
		x86_pmu.stop_scheduling(cpuc);

	return unsched ? -EINVAL : 0;
}