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
typedef  size_t u64 ;
typedef  int u32 ;
struct TYPE_5__ {int config; int idx; int config_base; int /*<<< orphan*/  last_period; int /*<<< orphan*/  period_left; int /*<<< orphan*/  sample_period; } ;
struct TYPE_4__ {int type; size_t config; scalar_t__ exclude_idle; scalar_t__ exclude_kernel; scalar_t__ exclude_user; } ;
struct perf_event {int /*<<< orphan*/  destroy; TYPE_2__ hw; TYPE_1__ attr; struct perf_event* group_leader; } ;
struct TYPE_6__ {int n_counter; size_t n_generic; size_t* generic_events; int (* xlate_event ) (size_t) ;int n_restricted; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOTSUPP ; 
 int EOPNOTSUPP ; 
 int FSL_EMB_EVENT_RESTRICTED ; 
 int FSL_EMB_EVENT_VALID ; 
 int MAX_HWEVENTS ; 
#define  PERF_TYPE_HARDWARE 130 
#define  PERF_TYPE_HW_CACHE 129 
#define  PERF_TYPE_RAW 128 
 int /*<<< orphan*/  PMGC0_FAC ; 
 int PMLCA_CE ; 
 size_t PMLCA_EVENT_MASK ; 
 int PMLCA_FCM1 ; 
 int PMLCA_FCS ; 
 int PMLCA_FCU ; 
 int /*<<< orphan*/  PMRN_PMGC0 ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct perf_event*,int,struct perf_event**) ; 
 int FUNC5 (size_t,size_t*) ; 
 int /*<<< orphan*/  hw_perf_event_destroy ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  num_events ; 
 int /*<<< orphan*/  perf_event_interrupt ; 
 int /*<<< orphan*/  pmc_reserve_mutex ; 
 TYPE_3__* ppmu ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (size_t) ; 

__attribute__((used)) static int FUNC13(struct perf_event *event)
{
	u64 ev;
	struct perf_event *events[MAX_HWEVENTS];
	int n;
	int err;
	int num_restricted;
	int i;

	if (ppmu->n_counter > MAX_HWEVENTS) {
		FUNC0(1, "No. of perf counters (%d) is higher than max array size(%d)\n",
			ppmu->n_counter, MAX_HWEVENTS);
		ppmu->n_counter = MAX_HWEVENTS;
	}

	switch (event->attr.type) {
	case PERF_TYPE_HARDWARE:
		ev = event->attr.config;
		if (ev >= ppmu->n_generic || ppmu->generic_events[ev] == 0)
			return -EOPNOTSUPP;
		ev = ppmu->generic_events[ev];
		break;

	case PERF_TYPE_HW_CACHE:
		err = FUNC5(event->attr.config, &ev);
		if (err)
			return err;
		break;

	case PERF_TYPE_RAW:
		ev = event->attr.config;
		break;

	default:
		return -ENOENT;
	}

	event->hw.config = ppmu->xlate_event(ev);
	if (!(event->hw.config & FSL_EMB_EVENT_VALID))
		return -EINVAL;

	/*
	 * If this is in a group, check if it can go on with all the
	 * other hardware events in the group.  We assume the event
	 * hasn't been linked into its leader's sibling list at this point.
	 */
	n = 0;
	if (event->group_leader != event) {
		n = FUNC4(event->group_leader,
		                   ppmu->n_counter - 1, events);
		if (n < 0)
			return -EINVAL;
	}

	if (event->hw.config & FSL_EMB_EVENT_RESTRICTED) {
		num_restricted = 0;
		for (i = 0; i < n; i++) {
			if (events[i]->hw.config & FSL_EMB_EVENT_RESTRICTED)
				num_restricted++;
		}

		if (num_restricted >= ppmu->n_restricted)
			return -EINVAL;
	}

	event->hw.idx = -1;

	event->hw.config_base = PMLCA_CE | PMLCA_FCM1 |
	                        (u32)((ev << 16) & PMLCA_EVENT_MASK);

	if (event->attr.exclude_user)
		event->hw.config_base |= PMLCA_FCU;
	if (event->attr.exclude_kernel)
		event->hw.config_base |= PMLCA_FCS;
	if (event->attr.exclude_idle)
		return -ENOTSUPP;

	event->hw.last_period = event->hw.sample_period;
	FUNC7(&event->hw.period_left, event->hw.last_period);

	/*
	 * See if we need to reserve the PMU.
	 * If no events are currently in use, then we have to take a
	 * mutex to ensure that we don't race with another task doing
	 * reserve_pmc_hardware or release_pmc_hardware.
	 */
	err = 0;
	if (!FUNC2(&num_events)) {
		FUNC9(&pmc_reserve_mutex);
		if (FUNC3(&num_events) == 0 &&
		    FUNC11(perf_event_interrupt))
			err = -EBUSY;
		else
			FUNC1(&num_events);
		FUNC10(&pmc_reserve_mutex);

		FUNC8(PMRN_PMGC0, PMGC0_FAC);
		FUNC6();
	}
	event->destroy = hw_perf_event_destroy;

	return err;
}