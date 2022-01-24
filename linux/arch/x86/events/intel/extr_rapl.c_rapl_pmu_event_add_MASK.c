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
struct rapl_pmu {int /*<<< orphan*/  lock; } ;
struct hw_perf_event {int state; } ;
struct perf_event {struct hw_perf_event hw; struct rapl_pmu* pmu_private; } ;

/* Variables and functions */
 int PERF_EF_START ; 
 int PERF_HES_STOPPED ; 
 int PERF_HES_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (struct rapl_pmu*,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct perf_event *event, int mode)
{
	struct rapl_pmu *pmu = event->pmu_private;
	struct hw_perf_event *hwc = &event->hw;
	unsigned long flags;

	FUNC1(&pmu->lock, flags);

	hwc->state = PERF_HES_UPTODATE | PERF_HES_STOPPED;

	if (mode & PERF_EF_START)
		FUNC0(pmu, event);

	FUNC2(&pmu->lock, flags);

	return 0;
}