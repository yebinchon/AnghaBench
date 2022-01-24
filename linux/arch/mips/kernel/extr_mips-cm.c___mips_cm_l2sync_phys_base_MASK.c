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
typedef  int u32 ;
typedef  int phys_addr_t ;

/* Variables and functions */
 int CM_GCR_L2_ONLY_SYNC_BASE_SYNCBASE ; 
 int CM_GCR_L2_ONLY_SYNC_BASE_SYNCEN ; 
 int MIPS_CM_GCR_SIZE ; 
 int FUNC0 () ; 
 int FUNC1 () ; 

phys_addr_t FUNC2(void)
{
	u32 base_reg;

	/*
	 * If the L2-only sync region is already enabled then leave it at it's
	 * current location.
	 */
	base_reg = FUNC1();
	if (base_reg & CM_GCR_L2_ONLY_SYNC_BASE_SYNCEN)
		return base_reg & CM_GCR_L2_ONLY_SYNC_BASE_SYNCBASE;

	/* Default to following the CM */
	return FUNC0() + MIPS_CM_GCR_SIZE;
}