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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct cpu_hw_events* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(void *ignored)
{
	struct cpu_hw_events *cpuc = FUNC2(&cpu_hw_events);

	/*
	 * check if PMC3 is used
	 * and if so force schedule out for all event types all contexts
	 */
	if (FUNC1(3, cpuc->active_mask))
		FUNC0(FUNC3());
}