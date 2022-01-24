#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  config; int /*<<< orphan*/  type; } ;
struct hw_perf_event {int idx; unsigned long config_base; int sample_period; int last_period; int /*<<< orphan*/  period_left; scalar_t__ event_base; scalar_t__ config; } ;
struct perf_event {struct perf_event* group_leader; TYPE_1__ attr; struct hw_perf_event hw; int /*<<< orphan*/  pmu; } ;
struct nds32_pmu {int (* map_event ) (struct perf_event*) ;int max_period; scalar_t__ (* set_event_filter ) (struct hw_perf_event*,TYPE_1__*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (struct perf_event*) ; 
 scalar_t__ FUNC4 (struct hw_perf_event*,TYPE_1__*) ; 
 struct nds32_pmu* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct perf_event*) ; 

__attribute__((used)) static int FUNC7(struct perf_event *event)
{
	struct nds32_pmu *nds32_pmu = FUNC5(event->pmu);
	struct hw_perf_event *hwc = &event->hw;
	int mapping;

	mapping = nds32_pmu->map_event(event);

	if (mapping < 0) {
		FUNC2("event %x:%llx not supported\n", event->attr.type,
			 event->attr.config);
		return mapping;
	}

	/*
	 * We don't assign an index until we actually place the event onto
	 * hardware. Use -1 to signify that we haven't decided where to put it
	 * yet. For SMP systems, each core has it's own PMU so we can't do any
	 * clever allocation or constraints checking at this point.
	 */
	hwc->idx = -1;
	hwc->config_base = 0;
	hwc->config = 0;
	hwc->event_base = 0;

	/*
	 * Check whether we need to exclude the counter from certain modes.
	 */
	if ((!nds32_pmu->set_event_filter ||
	     nds32_pmu->set_event_filter(hwc, &event->attr)) &&
	    FUNC0(&event->attr)) {
		FUNC2
			("NDS performance counters do not support mode exclusion\n");
		return -EOPNOTSUPP;
	}

	/*
	 * Store the event encoding into the config_base field.
	 */
	hwc->config_base |= (unsigned long)mapping;

	if (!hwc->sample_period) {
		/*
		 * For non-sampling runs, limit the sample_period to half
		 * of the counter width. That way, the new counter value
		 * is far less likely to overtake the previous one unless
		 * you have some serious IRQ latency issues.
		 */
		hwc->sample_period = nds32_pmu->max_period >> 1;
		hwc->last_period = hwc->sample_period;
		FUNC1(&hwc->period_left, hwc->sample_period);
	}

	if (event->group_leader != event) {
		if (FUNC6(event) != 0)
			return -EINVAL;
	}

	return 0;
}