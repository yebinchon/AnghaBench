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
typedef  int /*<<< orphan*/  u32 ;
struct pt_regs {int dummy; } ;
struct pmu_hw_events {struct perf_event** events; } ;
struct perf_sample_data {int dummy; } ;
struct hw_perf_event {int /*<<< orphan*/  last_period; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct arm_pmu {int num_events; int /*<<< orphan*/  (* disable ) (struct perf_event*) ;int /*<<< orphan*/  hw_events; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct arm_pmu*) ; 
 int /*<<< orphan*/  FUNC6 (struct arm_pmu*) ; 
 struct pt_regs* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (struct perf_event*,struct perf_sample_data*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC10 (struct perf_sample_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct perf_event*) ; 
 struct pmu_hw_events* FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC13(struct arm_pmu *cpu_pmu)
{
	u32 pmovsr;
	struct perf_sample_data data;
	struct pmu_hw_events *cpuc = FUNC12(cpu_pmu->hw_events);
	struct pt_regs *regs;
	int idx;

	/*
	 * Get and reset the IRQ flags
	 */
	pmovsr = FUNC3();

	/*
	 * Did an overflow occur?
	 */
	if (!FUNC4(pmovsr))
		return IRQ_NONE;

	/*
	 * Handle the counter(s) overflow(s)
	 */
	regs = FUNC7();

	/*
	 * Stop the PMU while processing the counter overflows
	 * to prevent skews in group events.
	 */
	FUNC6(cpu_pmu);
	for (idx = 0; idx < cpu_pmu->num_events; ++idx) {
		struct perf_event *event = cpuc->events[idx];
		struct hw_perf_event *hwc;

		/* Ignore if we don't have an event. */
		if (!event)
			continue;

		/*
		 * We have a single interrupt for all counters. Check that
		 * each counter has overflowed before we process it.
		 */
		if (!FUNC2(pmovsr, idx))
			continue;

		hwc = &event->hw;
		FUNC1(event);
		FUNC10(&data, 0, hwc->last_period);
		if (!FUNC0(event))
			continue;

		if (FUNC9(event, &data, regs))
			cpu_pmu->disable(event);
	}
	FUNC5(cpu_pmu);

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