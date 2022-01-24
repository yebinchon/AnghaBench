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
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cpu_hw_events*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct cpu_hw_events* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(int added)
{
	struct cpu_hw_events *cpuc = FUNC3(&cpu_hw_events);

	/*
	 * If we find PMC3 is no longer used when we enable the PMU, we can
	 * clear TFA.
	 */
	if (!FUNC2(3, cpuc->active_mask))
		FUNC1(cpuc, false);

	FUNC0(added);
}