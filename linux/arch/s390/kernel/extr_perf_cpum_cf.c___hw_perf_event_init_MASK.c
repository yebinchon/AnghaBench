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
typedef  size_t u64 ;
struct perf_event_attr {int type; size_t config; int /*<<< orphan*/  exclude_user; int /*<<< orphan*/  exclude_kernel; int /*<<< orphan*/  exclude_hv; } ;
struct hw_perf_event {size_t config; int config_base; } ;
struct perf_event {int /*<<< orphan*/  destroy; struct hw_perf_event hw; struct perf_event_attr attr; } ;
typedef  enum cpumf_ctr_set { ____Placeholder_cpumf_ctr_set } cpumf_ctr_set ;

/* Variables and functions */
 size_t FUNC0 (size_t*) ; 
#define  CPUMF_CTR_SET_BASIC 135 
#define  CPUMF_CTR_SET_CRYPTO 134 
#define  CPUMF_CTR_SET_EXT 133 
#define  CPUMF_CTR_SET_MAX 132 
#define  CPUMF_CTR_SET_MT_DIAG 131 
#define  CPUMF_CTR_SET_USER 130 
 int EBUSY ; 
 int EINVAL ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 size_t PERF_CPUM_CF_MAX_CTR ; 
#define  PERF_TYPE_HARDWARE 129 
#define  PERF_TYPE_RAW 128 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 size_t* cpumf_generic_events_basic ; 
 size_t* cpumf_generic_events_user ; 
 int FUNC5 (size_t) ; 
 int /*<<< orphan*/  hw_perf_event_destroy ; 
 int /*<<< orphan*/  FUNC6 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  num_events ; 
 int /*<<< orphan*/  pmc_reserve_mutex ; 
 int FUNC9 (struct hw_perf_event*) ; 
 int FUNC10 (struct hw_perf_event*) ; 

__attribute__((used)) static int FUNC11(struct perf_event *event)
{
	struct perf_event_attr *attr = &event->attr;
	struct hw_perf_event *hwc = &event->hw;
	enum cpumf_ctr_set set;
	int err = 0;
	u64 ev;

	switch (attr->type) {
	case PERF_TYPE_RAW:
		/* Raw events are used to access counters directly,
		 * hence do not permit excludes */
		if (attr->exclude_kernel || attr->exclude_user ||
		    attr->exclude_hv)
			return -EOPNOTSUPP;
		ev = attr->config;
		break;

	case PERF_TYPE_HARDWARE:
		if (FUNC6(event))	/* No sampling support */
			return -ENOENT;
		ev = attr->config;
		/* Count user space (problem-state) only */
		if (!attr->exclude_user && attr->exclude_kernel) {
			if (ev >= FUNC0(cpumf_generic_events_user))
				return -EOPNOTSUPP;
			ev = cpumf_generic_events_user[ev];

		/* No support for kernel space counters only */
		} else if (!attr->exclude_kernel && attr->exclude_user) {
			return -EOPNOTSUPP;

		/* Count user and kernel space */
		} else {
			if (ev >= FUNC0(cpumf_generic_events_basic))
				return -EOPNOTSUPP;
			ev = cpumf_generic_events_basic[ev];
		}
		break;

	default:
		return -ENOENT;
	}

	if (ev == -1)
		return -ENOENT;

	if (ev > PERF_CPUM_CF_MAX_CTR)
		return -ENOENT;

	/* Obtain the counter set to which the specified counter belongs */
	set = FUNC5(ev);
	switch (set) {
	case CPUMF_CTR_SET_BASIC:
	case CPUMF_CTR_SET_USER:
	case CPUMF_CTR_SET_CRYPTO:
	case CPUMF_CTR_SET_EXT:
	case CPUMF_CTR_SET_MT_DIAG:
		/*
		 * Use the hardware perf event structure to store the
		 * counter number in the 'config' member and the counter
		 * set number in the 'config_base'.  The counter set number
		 * is then later used to enable/disable the counter(s).
		 */
		hwc->config = ev;
		hwc->config_base = set;
		break;
	case CPUMF_CTR_SET_MAX:
		/* The counter could not be associated to a counter set */
		return -EINVAL;
	};

	/* Initialize for using the CPU-measurement counter facility */
	if (!FUNC3(&num_events)) {
		FUNC7(&pmc_reserve_mutex);
		if (FUNC4(&num_events) == 0 && FUNC1())
			err = -EBUSY;
		else
			FUNC2(&num_events);
		FUNC8(&pmc_reserve_mutex);
	}
	if (err)
		return err;
	event->destroy = hw_perf_event_destroy;

	/* Finally, validate version and authorization of the counter set */
	err = FUNC9(hwc);
	if (!err)
		err = FUNC10(hwc);

	return err;
}