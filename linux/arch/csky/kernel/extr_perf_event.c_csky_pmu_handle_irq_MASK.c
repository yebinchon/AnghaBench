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
struct pt_regs {int dummy; } ;
struct pmu_hw_events {struct perf_event** events; } ;
struct perf_sample_data {int dummy; } ;
struct hw_perf_event {int /*<<< orphan*/  last_period; } ;
struct perf_event {struct hw_perf_event hw; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  pmu; int /*<<< orphan*/  hw_events; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int CSKY_PMU_MAX_EVENTS ; 
 int /*<<< orphan*/  HPOFSR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*,struct hw_perf_event*) ; 
 TYPE_1__ csky_pmu ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_event*) ; 
 struct pt_regs* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (struct perf_event*,struct perf_sample_data*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC10 (struct perf_sample_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pmu_hw_events* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC12(int irq_num, void *dev)
{
	struct perf_sample_data data;
	struct pmu_hw_events *cpuc = FUNC11(csky_pmu.hw_events);
	struct pt_regs *regs;
	int idx;

	/*
	 * Did an overflow occur?
	 */
	if (!FUNC1(HPOFSR))
		return IRQ_NONE;

	/*
	 * Handle the counter(s) overflow(s)
	 */
	regs = FUNC7();

	FUNC3(&csky_pmu.pmu);

	for (idx = 0; idx < CSKY_PMU_MAX_EVENTS; ++idx) {
		struct perf_event *event = cpuc->events[idx];
		struct hw_perf_event *hwc;

		/* Ignore if we don't have an event. */
		if (!event)
			continue;
		/*
		 * We have a single interrupt for all counters. Check that
		 * each counter has overflowed before we process it.
		 */
		if (!(FUNC1(HPOFSR) & FUNC0(idx)))
			continue;

		hwc = &event->hw;
		FUNC2(event, &event->hw);
		FUNC10(&data, 0, hwc->last_period);
		FUNC5(event);

		if (FUNC9(event, &data, regs))
			FUNC6(event);
	}

	FUNC4(&csky_pmu.pmu);

	/*
	 * Handle the pending perf events.
	 *
	 * Note: this call *must* be run with interrupts disabled. For
	 * platforms that can have the PMU interrupts raised as an NMI, this
	 * will not work.
	 */
	FUNC8();

	return IRQ_HANDLED;
}