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
 int /*<<< orphan*/  H_SET_PARTITION_TABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * pseries_partition_tb ; 

void FUNC3(void)
{
	/*
	 * N.B. the kvmhv_on_pseries() test is there because it enables
	 * the compiler to remove the call to plpar_hcall_norets()
	 * when CONFIG_PPC_PSERIES=n.
	 */
	if (FUNC1() && pseries_partition_tb) {
		FUNC2(H_SET_PARTITION_TABLE, 0);
		FUNC0(pseries_partition_tb);
		pseries_partition_tb = NULL;
	}
}