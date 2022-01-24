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
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  ARC_REG_TLBCOMMAND ; 
 int /*<<< orphan*/  ARC_REG_TLBPD1 ; 
 int /*<<< orphan*/  TLBGetIndex ; 
 int /*<<< orphan*/  TLBWrite ; 
 unsigned int TLB_LKUP_ERR ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(unsigned int pd0, pte_t pd1)
{
	unsigned int idx;

	/*
	 * First verify if entry for this vaddr+ASID already exists
	 * This also sets up PD0 (vaddr, ASID..) for final commit
	 */
	idx = FUNC1(pd0);

	/*
	 * If Not already present get a free slot from MMU.
	 * Otherwise, Probe would have located the entry and set INDEX Reg
	 * with existing location. This will cause Write CMD to over-write
	 * existing entry with new PD0 and PD1
	 */
	if (FUNC0(idx & TLB_LKUP_ERR))
		FUNC2(ARC_REG_TLBCOMMAND, TLBGetIndex);

	/* setup the other half of TLB entry (pfn, rwx..) */
	FUNC2(ARC_REG_TLBPD1, pd1);

	/*
	 * Commit the Entry to MMU
	 * It doesn't sound safe to use the TLBWriteNI cmd here
	 * which doesn't flush uTLBs. I'd rather be safe than sorry.
	 */
	FUNC2(ARC_REG_TLBCOMMAND, TLBWrite);
}