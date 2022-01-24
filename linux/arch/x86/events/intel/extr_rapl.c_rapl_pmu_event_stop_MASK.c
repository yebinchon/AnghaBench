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
struct rapl_pmu {scalar_t__ n_active; int /*<<< orphan*/  lock; int /*<<< orphan*/  hrtimer; } ;
struct hw_perf_event {int state; } ;
struct perf_event {int /*<<< orphan*/  active_entry; struct hw_perf_event hw; struct rapl_pmu* pmu_private; } ;

/* Variables and functions */
 int PERF_EF_UPDATE ; 
 int PERF_HES_STOPPED ; 
 int PERF_HES_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct perf_event *event, int mode)
{
	struct rapl_pmu *pmu = event->pmu_private;
	struct hw_perf_event *hwc = &event->hw;
	unsigned long flags;

	FUNC4(&pmu->lock, flags);

	/* mark event as deactivated and stopped */
	if (!(hwc->state & PERF_HES_STOPPED)) {
		FUNC0(pmu->n_active <= 0);
		pmu->n_active--;
		if (pmu->n_active == 0)
			FUNC1(&pmu->hrtimer);

		FUNC2(&event->active_entry);

		FUNC0(hwc->state & PERF_HES_STOPPED);
		hwc->state |= PERF_HES_STOPPED;
	}

	/* check if update of sw counter is necessary */
	if ((mode & PERF_EF_UPDATE) && !(hwc->state & PERF_HES_UPTODATE)) {
		/*
		 * Drain the remaining delta count out of a event
		 * that we are disabling:
		 */
		FUNC3(event);
		hwc->state |= PERF_HES_UPTODATE;
	}

	FUNC5(&pmu->lock, flags);
}