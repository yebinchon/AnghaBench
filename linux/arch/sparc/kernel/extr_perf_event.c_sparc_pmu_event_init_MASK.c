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
struct perf_event_map {int dummy; } ;
struct perf_event_attr {int type; unsigned long config; int /*<<< orphan*/  exclude_hv; int /*<<< orphan*/  exclude_kernel; int /*<<< orphan*/  exclude_user; } ;
struct hw_perf_event {unsigned long event_base; scalar_t__ sample_period; int /*<<< orphan*/  period_left; scalar_t__ last_period; int /*<<< orphan*/  idx; int /*<<< orphan*/  config_base; } ;
struct perf_event {int /*<<< orphan*/  destroy; struct perf_event* group_leader; struct hw_perf_event hw; struct perf_event_attr attr; } ;
struct TYPE_2__ {unsigned long max_events; scalar_t__ max_hw_events; int /*<<< orphan*/  hv_bit; int /*<<< orphan*/  priv_bit; int /*<<< orphan*/  user_bit; int /*<<< orphan*/  irq_bit; struct perf_event_map* (* event_map ) (unsigned long) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct perf_event_map const*) ; 
 int MAX_HWEVENTS ; 
 scalar_t__ MAX_PERIOD ; 
#define  PERF_TYPE_HARDWARE 130 
#define  PERF_TYPE_HW_CACHE 129 
#define  PERF_TYPE_RAW 128 
 int /*<<< orphan*/  PIC_NO_INDEX ; 
 int FUNC1 (struct perf_event_map const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct perf_event**,int,int) ; 
 int FUNC4 (struct perf_event*,scalar_t__,struct perf_event**,unsigned long*,int*) ; 
 scalar_t__ FUNC5 (struct perf_event*) ; 
 int /*<<< orphan*/  hw_perf_event_destroy ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  nmi_active ; 
 unsigned long FUNC7 (struct perf_event_map const*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (struct perf_event**,unsigned long*,int) ; 
 struct perf_event_map* FUNC10 (unsigned long) ; 
 TYPE_1__* sparc_pmu ; 
 struct perf_event_map* FUNC11 (unsigned long) ; 

__attribute__((used)) static int FUNC12(struct perf_event *event)
{
	struct perf_event_attr *attr = &event->attr;
	struct perf_event *evts[MAX_HWEVENTS];
	struct hw_perf_event *hwc = &event->hw;
	unsigned long events[MAX_HWEVENTS];
	int current_idx_dmy[MAX_HWEVENTS];
	const struct perf_event_map *pmap;
	int n;

	if (FUNC2(&nmi_active) < 0)
		return -ENODEV;

	/* does not support taken branch sampling */
	if (FUNC5(event))
		return -EOPNOTSUPP;

	switch (attr->type) {
	case PERF_TYPE_HARDWARE:
		if (attr->config >= sparc_pmu->max_events)
			return -EINVAL;
		pmap = sparc_pmu->event_map(attr->config);
		break;

	case PERF_TYPE_HW_CACHE:
		pmap = FUNC10(attr->config);
		if (FUNC0(pmap))
			return FUNC1(pmap);
		break;

	case PERF_TYPE_RAW:
		pmap = NULL;
		break;

	default:
		return -ENOENT;

	}

	if (pmap) {
		hwc->event_base = FUNC7(pmap);
	} else {
		/*
		 * User gives us "(encoding << 16) | pic_mask" for
		 * PERF_TYPE_RAW events.
		 */
		hwc->event_base = attr->config;
	}

	/* We save the enable bits in the config_base.  */
	hwc->config_base = sparc_pmu->irq_bit;
	if (!attr->exclude_user)
		hwc->config_base |= sparc_pmu->user_bit;
	if (!attr->exclude_kernel)
		hwc->config_base |= sparc_pmu->priv_bit;
	if (!attr->exclude_hv)
		hwc->config_base |= sparc_pmu->hv_bit;

	n = 0;
	if (event->group_leader != event) {
		n = FUNC4(event->group_leader,
				   sparc_pmu->max_hw_events - 1,
				   evts, events, current_idx_dmy);
		if (n < 0)
			return -EINVAL;
	}
	events[n] = hwc->event_base;
	evts[n] = event;

	if (FUNC3(evts, n, 1))
		return -EINVAL;

	if (FUNC9(evts, events, n + 1))
		return -EINVAL;

	hwc->idx = PIC_NO_INDEX;

	/* Try to do all error checking before this point, as unwinding
	 * state after grabbing the PMC is difficult.
	 */
	FUNC8();
	event->destroy = hw_perf_event_destroy;

	if (!hwc->sample_period) {
		hwc->sample_period = MAX_PERIOD;
		hwc->last_period = hwc->sample_period;
		FUNC6(&hwc->period_left, hwc->sample_period);
	}

	return 0;
}