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
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
typedef  int /*<<< orphan*/  hugepd_t ;

/* Variables and functions */
 unsigned int PGDIR_SHIFT ; 
 unsigned int PMD_SHIFT ; 
 unsigned int PUD_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,unsigned long,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

pte_t *FUNC21(pgd_t *pgdir, unsigned long ea,
			bool *is_thp, unsigned *hpage_shift)
{
	pgd_t pgd, *pgdp;
	pud_t pud, *pudp;
	pmd_t pmd, *pmdp;
	pte_t *ret_pte;
	hugepd_t *hpdp = NULL;
	unsigned pdshift = PGDIR_SHIFT;

	if (hpage_shift)
		*hpage_shift = 0;

	if (is_thp)
		*is_thp = false;

	pgdp = pgdir + FUNC5(ea);
	pgd  = FUNC0(*pgdp);
	/*
	 * Always operate on the local stack value. This make sure the
	 * value don't get updated by a parallel THP split/collapse,
	 * page fault or a page unmap. The return pte_t * is still not
	 * stable. So should be checked there for above conditions.
	 */
	if (FUNC7(pgd))
		return NULL;

	if (FUNC6(pgd)) {
		ret_pte = (pte_t *)pgdp;
		goto out;
	}

	if (FUNC4(FUNC1(FUNC8(pgd)))) {
		hpdp = (hugepd_t *)&pgd;
		goto out_huge;
	}

	/*
	 * Even if we end up with an unmap, the pgtable will not
	 * be freed, because we do an rcu free and here we are
	 * irq disabled
	 */
	pdshift = PUD_SHIFT;
	pudp = FUNC19(&pgd, ea);
	pud  = FUNC0(*pudp);

	if (FUNC18(pud))
		return NULL;

	if (FUNC17(pud)) {
		ret_pte = (pte_t *)pudp;
		goto out;
	}

	if (FUNC4(FUNC1(FUNC20(pud)))) {
		hpdp = (hugepd_t *)&pud;
		goto out_huge;
	}

	pdshift = PMD_SHIFT;
	pmdp = FUNC13(&pud, ea);
	pmd  = FUNC0(*pmdp);

	/*
	 * A hugepage collapse is captured by this condition, see
	 * pmdp_collapse_flush.
	 */
	if (FUNC12(pmd))
		return NULL;

#ifdef CONFIG_PPC_BOOK3S_64
	/*
	 * A hugepage split is captured by this condition, see
	 * pmdp_invalidate.
	 *
	 * Huge page modification can be caught here too.
	 */
	if (pmd_is_serializing(pmd))
		return NULL;
#endif

	if (FUNC14(pmd) || FUNC9(pmd)) {
		if (is_thp)
			*is_thp = true;
		ret_pte = (pte_t *)pmdp;
		goto out;
	}

	if (FUNC10(pmd)) {
		ret_pte = (pte_t *)pmdp;
		goto out;
	}

	if (FUNC4(FUNC1(FUNC15(pmd)))) {
		hpdp = (hugepd_t *)&pmd;
		goto out_huge;
	}

	return FUNC16(&pmd, ea);

out_huge:
	if (!hpdp)
		return NULL;

	ret_pte = FUNC3(*hpdp, ea, pdshift);
	pdshift = FUNC2(*hpdp);
out:
	if (hpage_shift)
		*hpage_shift = pdshift;
	return ret_pte;
}