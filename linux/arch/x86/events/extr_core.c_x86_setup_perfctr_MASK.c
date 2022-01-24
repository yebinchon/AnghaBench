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
typedef  long long u64 ;
struct perf_event_attr {scalar_t__ type; scalar_t__ config; } ;
struct hw_perf_event {long long config; int /*<<< orphan*/  sample_period; int /*<<< orphan*/  period_left; int /*<<< orphan*/  last_period; } ;
struct perf_event {struct perf_event_attr attr; struct hw_perf_event hw; } ;
struct TYPE_2__ {scalar_t__ max_events; long long (* event_map ) (scalar_t__) ;int /*<<< orphan*/  max_period; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ PERF_TYPE_HW_CACHE ; 
 scalar_t__ PERF_TYPE_RAW ; 
 scalar_t__ FUNC0 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hw_perf_event*,struct perf_event*) ; 
 long long FUNC4 (scalar_t__) ; 
 TYPE_1__ x86_pmu ; 
 int FUNC5 (scalar_t__,struct perf_event*) ; 

int FUNC6(struct perf_event *event)
{
	struct perf_event_attr *attr = &event->attr;
	struct hw_perf_event *hwc = &event->hw;
	u64 config;

	if (!FUNC1(event)) {
		hwc->sample_period = x86_pmu.max_period;
		hwc->last_period = hwc->sample_period;
		FUNC2(&hwc->period_left, hwc->sample_period);
	}

	if (attr->type == PERF_TYPE_RAW)
		return FUNC5(event->attr.config, event);

	if (attr->type == PERF_TYPE_HW_CACHE)
		return FUNC3(hwc, event);

	if (attr->config >= x86_pmu.max_events)
		return -EINVAL;

	attr->config = FUNC0((unsigned long)attr->config, x86_pmu.max_events);

	/*
	 * The generic map:
	 */
	config = x86_pmu.event_map(attr->config);

	if (config == 0)
		return -ENOENT;

	if (config == -1LL)
		return -EINVAL;

	hwc->config |= config;

	return 0;
}