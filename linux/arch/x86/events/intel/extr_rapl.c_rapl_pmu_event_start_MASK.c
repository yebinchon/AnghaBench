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
struct perf_event {struct rapl_pmu* pmu_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rapl_pmu*,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct perf_event *event, int mode)
{
	struct rapl_pmu *pmu = event->pmu_private;
	unsigned long flags;

	FUNC1(&pmu->lock, flags);
	FUNC0(pmu, event);
	FUNC2(&pmu->lock, flags);
}