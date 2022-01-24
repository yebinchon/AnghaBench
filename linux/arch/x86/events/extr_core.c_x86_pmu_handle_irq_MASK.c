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
typedef  unsigned long long u64 ;
struct pt_regs {int dummy; } ;
struct perf_sample_data {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  last_period; } ;
struct perf_event {TYPE_1__ hw; } ;
struct cpu_hw_events {struct perf_event** events; int /*<<< orphan*/  active_mask; } ;
struct TYPE_4__ {int num_counters; int cntval_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_DM_NMI ; 
 int /*<<< orphan*/  APIC_LVTPC ; 
 int /*<<< orphan*/  apic_perf_irqs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct perf_event*,struct perf_sample_data*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_sample_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct cpu_hw_events* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_event*) ; 
 unsigned long long FUNC7 (struct perf_event*) ; 
 TYPE_2__ x86_pmu ; 
 int /*<<< orphan*/  FUNC8 (struct perf_event*,int /*<<< orphan*/ ) ; 

int FUNC9(struct pt_regs *regs)
{
	struct perf_sample_data data;
	struct cpu_hw_events *cpuc;
	struct perf_event *event;
	int idx, handled = 0;
	u64 val;

	cpuc = FUNC5(&cpu_hw_events);

	/*
	 * Some chipsets need to unmask the LVTPC in a particular spot
	 * inside the nmi handler.  As a result, the unmasking was pushed
	 * into all the nmi handlers.
	 *
	 * This generic handler doesn't seem to have any issues where the
	 * unmasking occurs so it was left at the top.
	 */
	FUNC0(APIC_LVTPC, APIC_DM_NMI);

	for (idx = 0; idx < x86_pmu.num_counters; idx++) {
		if (!FUNC4(idx, cpuc->active_mask))
			continue;

		event = cpuc->events[idx];

		val = FUNC7(event);
		if (val & (1ULL << (x86_pmu.cntval_bits - 1)))
			continue;

		/*
		 * event overflow
		 */
		handled++;
		FUNC3(&data, 0, event->hw.last_period);

		if (!FUNC6(event))
			continue;

		if (FUNC2(event, &data, regs))
			FUNC8(event, 0);
	}

	if (handled)
		FUNC1(apic_perf_irqs);

	return handled;
}