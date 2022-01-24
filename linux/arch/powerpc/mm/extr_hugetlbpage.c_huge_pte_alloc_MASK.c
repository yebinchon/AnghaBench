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
struct mm_struct {int /*<<< orphan*/  page_table_lock; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
typedef  int /*<<< orphan*/  hugepd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int PGDIR_SHIFT ; 
 unsigned int PMD_SHIFT ; 
 unsigned int PUD_SHIFT ; 
 unsigned int FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long,unsigned int,unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,unsigned long,unsigned int) ; 
 int /*<<< orphan*/ * FUNC6 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/ * FUNC7 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC8 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC10 (struct mm_struct*,int /*<<< orphan*/ *) ; 

pte_t *FUNC11(struct mm_struct *mm, unsigned long addr, unsigned long sz)
{
	pgd_t *pg;
	pud_t *pu;
	pmd_t *pm;
	hugepd_t *hpdp = NULL;
	unsigned pshift = FUNC1(sz);
	unsigned pdshift = PGDIR_SHIFT;
	spinlock_t *ptl;

	addr &= ~(sz-1);
	pg = FUNC6(mm, addr);

#ifdef CONFIG_PPC_BOOK3S_64
	if (pshift == PGDIR_SHIFT)
		/* 16GB huge page */
		return (pte_t *) pg;
	else if (pshift > PUD_SHIFT) {
		/*
		 * We need to use hugepd table
		 */
		ptl = &mm->page_table_lock;
		hpdp = (hugepd_t *)pg;
	} else {
		pdshift = PUD_SHIFT;
		pu = pud_alloc(mm, pg, addr);
		if (!pu)
			return NULL;
		if (pshift == PUD_SHIFT)
			return (pte_t *)pu;
		else if (pshift > PMD_SHIFT) {
			ptl = pud_lockptr(mm, pu);
			hpdp = (hugepd_t *)pu;
		} else {
			pdshift = PMD_SHIFT;
			pm = pmd_alloc(mm, pu, addr);
			if (!pm)
				return NULL;
			if (pshift == PMD_SHIFT)
				/* 16MB hugepage */
				return (pte_t *)pm;
			else {
				ptl = pmd_lockptr(mm, pm);
				hpdp = (hugepd_t *)pm;
			}
		}
	}
#else
	if (pshift >= PGDIR_SHIFT) {
		ptl = &mm->page_table_lock;
		hpdp = (hugepd_t *)pg;
	} else {
		pdshift = PUD_SHIFT;
		pu = FUNC9(mm, pg, addr);
		if (!pu)
			return NULL;
		if (pshift >= PUD_SHIFT) {
			ptl = FUNC10(mm, pu);
			hpdp = (hugepd_t *)pu;
		} else {
			pdshift = PMD_SHIFT;
			pm = FUNC7(mm, pu, addr);
			if (!pm)
				return NULL;
			ptl = FUNC8(mm, pm);
			hpdp = (hugepd_t *)pm;
		}
	}
#endif
	if (!hpdp)
		return NULL;

	FUNC0(!FUNC3(*hpdp) && !FUNC4(*hpdp));

	if (FUNC3(*hpdp) && FUNC2(mm, hpdp, addr,
						  pdshift, pshift, ptl))
		return NULL;

	return FUNC5(*hpdp, addr, pdshift);
}