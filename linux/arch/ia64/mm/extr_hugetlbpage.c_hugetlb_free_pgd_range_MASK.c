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
struct mmu_gather {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long) ; 
 scalar_t__ RGN_HPAGE ; 
 int /*<<< orphan*/  FUNC1 (struct mmu_gather*,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 unsigned long FUNC2 (unsigned long) ; 

void FUNC3(struct mmu_gather *tlb,
			unsigned long addr, unsigned long end,
			unsigned long floor, unsigned long ceiling)
{
	/*
	 * This is called to free hugetlb page tables.
	 *
	 * The offset of these addresses from the base of the hugetlb
	 * region must be scaled down by HPAGE_SIZE/PAGE_SIZE so that
	 * the standard free_pgd_range will free the right page tables.
	 *
	 * If floor and ceiling are also in the hugetlb region, they
	 * must likewise be scaled down; but if outside, left unchanged.
	 */

	addr = FUNC2(addr);
	end  = FUNC2(end);
	if (FUNC0(floor) == RGN_HPAGE)
		floor = FUNC2(floor);
	if (FUNC0(ceiling) == RGN_HPAGE)
		ceiling = FUNC2(ceiling);

	FUNC1(tlb, addr, end, floor, ceiling);
}