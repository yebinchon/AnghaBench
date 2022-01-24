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
 int CM_GCR_GIC_STATUS_EX ; 
 int ENODEV ; 
 int /*<<< orphan*/  cps_smp_ops ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(void)
{
	if (!FUNC0()) {
		FUNC1("MIPS CPS SMP unable to proceed without a CM\n");
		return -ENODEV;
	}

	/* check we have a GIC - we need one for IPIs */
	if (!(FUNC2() & CM_GCR_GIC_STATUS_EX)) {
		FUNC1("MIPS CPS SMP unable to proceed without a GIC\n");
		return -ENODEV;
	}

	FUNC3(&cps_smp_ops);
	return 0;
}