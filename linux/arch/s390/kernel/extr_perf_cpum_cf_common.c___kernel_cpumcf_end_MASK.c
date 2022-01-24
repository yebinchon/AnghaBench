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
 int /*<<< orphan*/  IRQ_SUBCLASS_MEASUREMENT_ALERT ; 
 int PMC_RELEASE ; 
 int /*<<< orphan*/  cpum_cf_setup_cpu ; 
 int /*<<< orphan*/ * cpumcf_owner ; 
 int /*<<< orphan*/  cpumcf_owner_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(void)
{
	int flags = PMC_RELEASE;

	FUNC1(cpum_cf_setup_cpu, &flags, 1);
	FUNC0(IRQ_SUBCLASS_MEASUREMENT_ALERT);

	FUNC2(&cpumcf_owner_lock);
	cpumcf_owner = NULL;
	FUNC3(&cpumcf_owner_lock);
}