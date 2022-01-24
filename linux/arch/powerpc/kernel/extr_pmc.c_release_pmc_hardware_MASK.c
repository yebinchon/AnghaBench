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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  dummy_perf ; 
 int /*<<< orphan*/  perf_irq ; 
 int /*<<< orphan*/ * pmc_owner_caller ; 
 int /*<<< orphan*/  pmc_owner_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
	FUNC1(&pmc_owner_lock);

	FUNC0(! pmc_owner_caller);

	pmc_owner_caller = NULL;
	perf_irq = dummy_perf;

	FUNC2(&pmc_owner_lock);
}