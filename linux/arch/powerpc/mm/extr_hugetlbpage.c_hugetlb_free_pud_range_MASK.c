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
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pgd_t ;
typedef  int /*<<< orphan*/  hugepd_t ;

/* Variables and functions */
 unsigned long PGDIR_MASK ; 
 int /*<<< orphan*/  PUD_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mmu_gather*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mmu_gather*,int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC7 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct mmu_gather*,int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct mmu_gather *tlb, pgd_t *pgd,
				   unsigned long addr, unsigned long end,
				   unsigned long floor, unsigned long ceiling)
{
	pud_t *pud;
	unsigned long next;
	unsigned long start;

	start = addr;
	do {
		pud = FUNC10(pgd, addr);
		next = FUNC7(addr, end);
		if (!FUNC4(FUNC0(FUNC11(*pud)))) {
			if (FUNC9(pud))
				continue;
			FUNC3(tlb, pud, addr, next, floor,
					       ceiling);
		} else {
			unsigned long more;
			/*
			 * Increment next by the size of the huge mapping since
			 * there may be more than one entry at this level for a
			 * single hugepage, but all of them point to
			 * the same kmem cache that holds the hugepte.
			 */
			more = addr + (1 << FUNC2(*(hugepd_t *)pud));
			if (more > next)
				next = more;

			FUNC1(tlb, (hugepd_t *)pud, PUD_SHIFT,
					  addr, next, floor, ceiling);
		}
	} while (addr = next, addr != end);

	start &= PGDIR_MASK;
	if (start < floor)
		return;
	if (ceiling) {
		ceiling &= PGDIR_MASK;
		if (!ceiling)
			return;
	}
	if (end - 1 > ceiling - 1)
		return;

	pud = FUNC10(pgd, start);
	FUNC6(pgd);
	FUNC8(tlb, pud, start);
	FUNC5(tlb->mm);
}