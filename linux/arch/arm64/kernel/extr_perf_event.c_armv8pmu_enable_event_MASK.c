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
 int /*<<< orphan*/  FUNC2 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pmu_hw_events* FUNC6 (int /*<<< orphan*/ ) ; 
 struct arm_pmu* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct perf_event *event)
{
	unsigned long flags;
	struct arm_pmu *cpu_pmu = FUNC7(event->pmu);
	struct pmu_hw_events *events = FUNC6(cpu_pmu->hw_events);

	/*
	 * Enable counter and interrupt, and set the counter to count
	 * the event that we're interested in.
	 */
	FUNC4(&events->pmu_lock, flags);

	/*
	 * Disable counter
	 */
	FUNC0(event);

	/*
	 * Set event (if destined for PMNx counters).
	 */
	FUNC3(event);

	/*
	 * Enable interrupt for this counter
	 */
	FUNC2(event);

	/*
	 * Enable counter
	 */
	FUNC1(event);

	FUNC5(&events->pmu_lock, flags);
}