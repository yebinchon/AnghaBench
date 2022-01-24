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
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  hugepd_t ;

/* Variables and functions */
 int /*<<< orphan*/  PMD_SHIFT ; 
 unsigned long PUD_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mmu_gather*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct mmu_gather*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct mmu_gather *tlb, pud_t *pud,
				   unsigned long addr, unsigned long end,
				   unsigned long floor, unsigned long ceiling)
{
	pmd_t *pmd;
	unsigned long next;
	unsigned long start;

	start = addr;
	do {
		unsigned long more;

		pmd = FUNC9(pud, addr);
		next = FUNC6(addr, end);
		if (!FUNC4(FUNC1(FUNC10(*pmd)))) {
			/*
			 * if it is not hugepd pointer, we should already find
			 * it cleared.
			 */
			FUNC0(!FUNC8(pmd));
			continue;
		}
		/*
		 * Increment next by the size of the huge mapping since
		 * there may be more than one entry at this level for a
		 * single hugepage, but all of them point to
		 * the same kmem cache that holds the hugepte.
		 */
		more = addr + (1 << FUNC3(*(hugepd_t *)pmd));
		if (more > next)
			next = more;

		FUNC2(tlb, (hugepd_t *)pmd, PMD_SHIFT,
				  addr, next, floor, ceiling);
	} while (addr = next, addr != end);

	start &= PUD_MASK;
	if (start < floor)
		return;
	if (ceiling) {
		ceiling &= PUD_MASK;
		if (!ceiling)
			return;
	}
	if (end - 1 > ceiling - 1)
		return;

	pmd = FUNC9(pud, start);
	FUNC11(pud);
	FUNC7(tlb, pmd, start);
	FUNC5(tlb->mm);
}