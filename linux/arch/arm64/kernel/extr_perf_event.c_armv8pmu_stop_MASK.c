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
struct arm_pmu {int /*<<< orphan*/  hw_events; } ;

/* Variables and functions */
 int ARMV8_PMU_PMCR_E ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pmu_hw_events* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct arm_pmu *cpu_pmu)
{
	unsigned long flags;
	struct pmu_hw_events *events = FUNC4(cpu_pmu->hw_events);

	FUNC2(&events->pmu_lock, flags);
	/* Disable all counters */
	FUNC1(FUNC0() & ~ARMV8_PMU_PMCR_E);
	FUNC3(&events->pmu_lock, flags);
}