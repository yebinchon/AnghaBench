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
struct perf_event_attr {int type; int config; } ;
struct hw_perf_event {int config; } ;
struct perf_event {int /*<<< orphan*/  destroy; struct hw_perf_event hw; struct perf_event_attr attr; } ;
struct TYPE_2__ {int raw_event_mask; int max_events; int (* event_map ) (int) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
#define  PERF_TYPE_HARDWARE 130 
#define  PERF_TYPE_HW_CACHE 129 
#define  PERF_TYPE_RAW 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int*) ; 
 int /*<<< orphan*/  hw_perf_event_destroy ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  num_events ; 
 int /*<<< orphan*/  pmc_reserve_mutex ; 
 scalar_t__ FUNC6 () ; 
 TYPE_1__* sh_pmu ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct perf_event *event)
{
	struct perf_event_attr *attr = &event->attr;
	struct hw_perf_event *hwc = &event->hw;
	int config = -1;
	int err;

	if (!FUNC7())
		return -ENODEV;

	/*
	 * See if we need to reserve the counter.
	 *
	 * If no events are currently in use, then we have to take a
	 * mutex to ensure that we don't race with another task doing
	 * reserve_pmc_hardware or release_pmc_hardware.
	 */
	err = 0;
	if (!FUNC1(&num_events)) {
		FUNC4(&pmc_reserve_mutex);
		if (FUNC2(&num_events) == 0 &&
		    FUNC6())
			err = -EBUSY;
		else
			FUNC0(&num_events);
		FUNC5(&pmc_reserve_mutex);
	}

	if (err)
		return err;

	event->destroy = hw_perf_event_destroy;

	switch (attr->type) {
	case PERF_TYPE_RAW:
		config = attr->config & sh_pmu->raw_event_mask;
		break;
	case PERF_TYPE_HW_CACHE:
		err = FUNC3(attr->config, &config);
		if (err)
			return err;
		break;
	case PERF_TYPE_HARDWARE:
		if (attr->config >= sh_pmu->max_events)
			return -EINVAL;

		config = sh_pmu->event_map(attr->config);
		break;
	}

	if (config == -1)
		return -EINVAL;

	hwc->config |= config;

	return 0;
}