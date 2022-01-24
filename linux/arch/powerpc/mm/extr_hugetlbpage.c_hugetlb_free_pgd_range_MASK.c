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
typedef  int /*<<< orphan*/  hugepd_t ;

/* Variables and functions */
 int /*<<< orphan*/  PGDIR_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mmu_gather*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mmu_gather*,int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct mmu_gather *tlb,
			    unsigned long addr, unsigned long end,
			    unsigned long floor, unsigned long ceiling)
{
	pgd_t *pgd;
	unsigned long next;

	/*
	 * Because there are a number of different possible pagetable
	 * layouts for hugepage ranges, we limit knowledge of how
	 * things should be laid out to the allocation path
	 * (huge_pte_alloc(), above).  Everything else works out the
	 * structure as it goes from information in the hugepd
	 * pointers.  That means that we can't here use the
	 * optimization used in the normal page free_pgd_range(), of
	 * checking whether we're actually covering a large enough
	 * range to have to do anything at the top level of the walk
	 * instead of at the bottom.
	 *
	 * To make sense of this, you should probably go read the big
	 * block comment at the top of the normal free_pgd_range(),
	 * too.
	 */

	do {
		next = FUNC5(addr, end);
		pgd = FUNC7(tlb->mm, addr);
		if (!FUNC4(FUNC0(FUNC8(*pgd)))) {
			if (FUNC6(pgd))
				continue;
			FUNC3(tlb, pgd, addr, next, floor, ceiling);
		} else {
			unsigned long more;
			/*
			 * Increment next by the size of the huge mapping since
			 * there may be more than one entry at the pgd level
			 * for a single hugepage, but all of them point to the
			 * same kmem cache that holds the hugepte.
			 */
			more = addr + (1 << FUNC2(*(hugepd_t *)pgd));
			if (more > next)
				next = more;

			FUNC1(tlb, (hugepd_t *)pgd, PGDIR_SHIFT,
					  addr, next, floor, ceiling);
		}
	} while (addr = next, addr != end);
}