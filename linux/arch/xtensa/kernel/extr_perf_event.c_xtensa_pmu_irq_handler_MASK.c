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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u64 ;
struct xtensa_pmu_events {struct perf_event** event; int /*<<< orphan*/  used_mask; } ;
struct pt_regs {int dummy; } ;
struct perf_sample_data {int dummy; } ;
struct hw_perf_event {int /*<<< orphan*/  last_period; } ;
struct perf_event {struct hw_perf_event hw; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int XCHAL_NUM_PERF_COUNTERS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int XTENSA_PMU_PMSTAT_OVFL ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct pt_regs* FUNC4 () ; 
 scalar_t__ FUNC5 (struct perf_event*,struct perf_sample_data*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_sample_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 struct xtensa_pmu_events* FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct perf_event*,struct hw_perf_event*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct perf_event*,struct hw_perf_event*,unsigned int) ; 
 int /*<<< orphan*/  xtensa_pmu_events ; 
 int /*<<< orphan*/  FUNC11 (struct perf_event*,int /*<<< orphan*/ ) ; 

irqreturn_t FUNC12(int irq, void *dev_id)
{
	irqreturn_t rc = IRQ_NONE;
	struct xtensa_pmu_events *ev = FUNC8(&xtensa_pmu_events);
	unsigned i;

	for (i = FUNC1(ev->used_mask, XCHAL_NUM_PERF_COUNTERS);
	     i < XCHAL_NUM_PERF_COUNTERS;
	     i = FUNC2(ev->used_mask, XCHAL_NUM_PERF_COUNTERS, i + 1)) {
		uint32_t v = FUNC3(FUNC0(i));
		struct perf_event *event = ev->event[i];
		struct hw_perf_event *hwc = &event->hw;
		u64 last_period;

		if (!(v & XTENSA_PMU_PMSTAT_OVFL))
			continue;

		FUNC7(v, FUNC0(i));
		FUNC10(event, hwc, i);
		last_period = hwc->last_period;
		if (FUNC9(event, hwc, i)) {
			struct perf_sample_data data;
			struct pt_regs *regs = FUNC4();

			FUNC6(&data, 0, last_period);
			if (FUNC5(event, &data, regs))
				FUNC11(event, 0);
		}

		rc = IRQ_HANDLED;
	}
	return rc;
}