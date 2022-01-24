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
struct perf_sample_data {int dummy; } ;
struct hw_perf_event {int /*<<< orphan*/  last_period; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct cpu_hw_events {int n_events; int* current_idx; int /*<<< orphan*/  idx_mask; struct perf_event** event; } ;
struct TYPE_2__ {unsigned long num_pmcs; scalar_t__* pmc_max_period; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERFMON_CMD_DISABLE ; 
 int /*<<< orphan*/  PERFMON_CMD_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct perf_event*,struct hw_perf_event*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*,struct hw_perf_event*,int,scalar_t__) ; 
 TYPE_1__* alpha_pmu ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  irq_err_count ; 
 int /*<<< orphan*/  irq_pmi_count ; 
 scalar_t__ FUNC4 (struct perf_event*,struct perf_sample_data*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_sample_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 struct cpu_hw_events* FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(unsigned long la_ptr,
					struct pt_regs *regs)
{
	struct cpu_hw_events *cpuc;
	struct perf_sample_data data;
	struct perf_event *event;
	struct hw_perf_event *hwc;
	int idx, j;

	FUNC0(irq_pmi_count);
	cpuc = FUNC7(&cpu_hw_events);

	/* Completely counting through the PMC's period to trigger a new PMC
	 * overflow interrupt while in this interrupt routine is utterly
	 * disastrous!  The EV6 and EV67 counters are sufficiently large to
	 * prevent this but to be really sure disable the PMCs.
	 */
	FUNC9(PERFMON_CMD_DISABLE, cpuc->idx_mask);

	/* la_ptr is the counter that overflowed. */
	if (FUNC8(la_ptr >= alpha_pmu->num_pmcs)) {
		/* This should never occur! */
		irq_err_count++;
		FUNC6("PMI: silly index %ld\n", la_ptr);
		FUNC9(PERFMON_CMD_ENABLE, cpuc->idx_mask);
		return;
	}

	idx = la_ptr;

	for (j = 0; j < cpuc->n_events; j++) {
		if (cpuc->current_idx[j] == idx)
			break;
	}

	if (FUNC8(j == cpuc->n_events)) {
		/* This can occur if the event is disabled right on a PMC overflow. */
		FUNC9(PERFMON_CMD_ENABLE, cpuc->idx_mask);
		return;
	}

	event = cpuc->event[j];

	if (FUNC8(!event)) {
		/* This should never occur! */
		irq_err_count++;
		FUNC6("PMI: No event at index %d!\n", idx);
		FUNC9(PERFMON_CMD_ENABLE, cpuc->idx_mask);
		return;
	}

	hwc = &event->hw;
	FUNC2(event, hwc, idx, alpha_pmu->pmc_max_period[idx]+1);
	FUNC5(&data, 0, hwc->last_period);

	if (FUNC1(event, hwc, idx)) {
		if (FUNC4(event, &data, regs)) {
			/* Interrupts coming too quickly; "throttle" the
			 * counter, i.e., disable it for a little while.
			 */
			FUNC3(event, 0);
		}
	}
	FUNC9(PERFMON_CMD_ENABLE, cpuc->idx_mask);

	return;
}