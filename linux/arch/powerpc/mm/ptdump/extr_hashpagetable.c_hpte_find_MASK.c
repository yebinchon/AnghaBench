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
typedef  unsigned long u64 ;
struct pg_state {int dummy; } ;

/* Variables and functions */
 unsigned long HPTE_R_RPN ; 
 unsigned long HPTE_R_RPN_SHIFT ; 
 unsigned long HPTE_V_LARGE ; 
 unsigned long PAGE_OFFSET ; 
 unsigned long FUNC0 (unsigned long,int,int,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long,unsigned long*,int*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct pg_state*,unsigned long,unsigned long,unsigned long,unsigned long,int,int,unsigned long) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static unsigned long FUNC4(struct pg_state *st, unsigned long ea, int psize)
{
	unsigned long slot;
	u64 v  = 0, r = 0;
	unsigned long rpn, lp_bits;
	int base_psize = 0, actual_psize = 0;

	if (ea < PAGE_OFFSET)
		return -1;

	/* Look in primary table */
	slot = FUNC0(ea, psize, true, &v, &r);

	/* Look in secondary table */
	if (slot == -1)
		slot = FUNC0(ea, psize, false, &v, &r);

	/* No entry found */
	if (slot == -1)
		return -1;

	/*
	 * We found an entry in the hash page table:
	 *  - check that this has the same base page
	 *  - find the actual page size
	 *  - find the RPN
	 */
	base_psize = FUNC3(psize);

	if ((v & HPTE_V_LARGE) == HPTE_V_LARGE) {
		FUNC1(psize, r, &rpn, &actual_psize, &lp_bits);
	} else {
		/* 4K actual page size */
		actual_psize = 12;
		rpn = (r & HPTE_R_RPN) >> HPTE_R_RPN_SHIFT;
		/* In this case there are no LP bits */
		lp_bits = -1;
	}
	/*
	 * We didn't find a matching encoding, so the PTE we found isn't for
	 * this address.
	 */
	if (actual_psize == -1)
		return -1;

	FUNC2(st, ea, v, r, rpn, base_psize, actual_psize, lp_bits);
	return 0;
}