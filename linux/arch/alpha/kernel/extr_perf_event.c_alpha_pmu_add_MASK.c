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
struct hw_perf_event {int /*<<< orphan*/  state; int /*<<< orphan*/  event_base; } ;
struct perf_event {int /*<<< orphan*/  pmu; struct hw_perf_event hw; } ;
struct cpu_hw_events {int n_events; int /*<<< orphan*/  n_added; int /*<<< orphan*/ * evtype; struct perf_event** event; int /*<<< orphan*/ * current_idx; } ;
struct TYPE_2__ {int num_pmcs; } ;

/* Variables and functions */
 int EAGAIN ; 
 int PERF_EF_START ; 
 int /*<<< orphan*/  PERF_HES_STOPPED ; 
 int /*<<< orphan*/  PERF_HES_UPTODATE ; 
 int /*<<< orphan*/  PMC_NO_INDEX ; 
 int /*<<< orphan*/  FUNC0 (struct perf_event**,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* alpha_pmu ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct cpu_hw_events* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct perf_event *event, int flags)
{
	struct cpu_hw_events *cpuc = FUNC5(&cpu_hw_events);
	struct hw_perf_event *hwc = &event->hw;
	int n0;
	int ret;
	unsigned long irq_flags;

	/*
	 * The Sparc code has the IRQ disable first followed by the perf
	 * disable, however this can lead to an overflowed counter with the
	 * PMI disabled on rare occasions.  The alpha_perf_event_update()
	 * routine should detect this situation by noting a negative delta,
	 * nevertheless we disable the PMCs first to enable a potential
	 * final PMI to occur before we disable interrupts.
	 */
	FUNC3(event->pmu);
	FUNC2(irq_flags);

	/* Default to error to be returned */
	ret = -EAGAIN;

	/* Insert event on to PMU and if successful modify ret to valid return */
	n0 = cpuc->n_events;
	if (n0 < alpha_pmu->num_pmcs) {
		cpuc->event[n0] = event;
		cpuc->evtype[n0] = event->hw.event_base;
		cpuc->current_idx[n0] = PMC_NO_INDEX;

		if (!FUNC0(cpuc->event, cpuc->evtype, n0+1)) {
			cpuc->n_events++;
			cpuc->n_added++;
			ret = 0;
		}
	}

	hwc->state = PERF_HES_UPTODATE;
	if (!(flags & PERF_EF_START))
		hwc->state |= PERF_HES_STOPPED;

	FUNC1(irq_flags);
	FUNC4(event->pmu);

	return ret;
}