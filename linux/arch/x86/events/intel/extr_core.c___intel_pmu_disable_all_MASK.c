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
struct cpu_hw_events {int /*<<< orphan*/  active_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTEL_PMC_IDX_FIXED_BTS ; 
 int /*<<< orphan*/  MSR_CORE_PERF_GLOBAL_CTRL ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cpu_hw_events* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
	struct cpu_hw_events *cpuc = FUNC3(&cpu_hw_events);

	FUNC4(MSR_CORE_PERF_GLOBAL_CTRL, 0);

	if (FUNC2(INTEL_PMC_IDX_FIXED_BTS, cpuc->active_mask))
		FUNC0();

	FUNC1();
}