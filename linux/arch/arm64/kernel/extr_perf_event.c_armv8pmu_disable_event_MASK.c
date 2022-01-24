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
struct pmu_hw_events {int /*<<< orphan*/  pmu_lock; } ;
struct perf_event {int /*<<< orphan*/  pmu; } ;
struct arm_pmu {int /*<<< orphan*/  hw_events; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pmu_hw_events* FUNC4 (int /*<<< orphan*/ ) ; 
 struct arm_pmu* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct perf_event *event)
{
	unsigned long flags;
	struct arm_pmu *cpu_pmu = FUNC5(event->pmu);
	struct pmu_hw_events *events = FUNC4(cpu_pmu->hw_events);

	/*
	 * Disable counter and interrupt
	 */
	FUNC2(&events->pmu_lock, flags);

	/*
	 * Disable counter
	 */
	FUNC0(event);

	/*
	 * Disable interrupt for this counter
	 */
	FUNC1(event);

	FUNC3(&events->pmu_lock, flags);
}