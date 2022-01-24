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
struct mmu_gather {int /*<<< orphan*/  mm; } ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 unsigned long PMD_MASK ; 
 scalar_t__ PMD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct mmu_gather*,int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 unsigned long FUNC1 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

void FUNC4(struct mmu_gather *tlb,
			    unsigned long addr, unsigned long end,
			    unsigned long floor, unsigned long ceiling)
{
	pgd_t *pgd;
	unsigned long next;

	addr &= PMD_MASK;
	if (addr < floor) {
		addr += PMD_SIZE;
		if (!addr)
			return;
	}
	if (ceiling) {
		ceiling &= PMD_MASK;
		if (!ceiling)
			return;
	}
	if (end - 1 > ceiling - 1)
		end -= PMD_SIZE;
	if (addr > end - 1)
		return;

	pgd = FUNC3(tlb->mm, addr);
	do {
		next = FUNC1(addr, end);
		if (FUNC2(pgd))
			continue;
		FUNC0(tlb, pgd, addr, next, floor, ceiling);
	} while (pgd++, addr = next, addr != end);
}