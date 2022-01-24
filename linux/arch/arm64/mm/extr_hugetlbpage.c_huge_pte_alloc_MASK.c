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
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ARCH_WANT_HUGE_PMD_SHARE ; 
 unsigned long CONT_PMD_SIZE ; 
 unsigned long CONT_PTE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long PMD_SIZE ; 
 unsigned long PUD_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/ * FUNC3 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/ * FUNC5 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC6 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC7 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

pte_t *FUNC9(struct mm_struct *mm,
		      unsigned long addr, unsigned long sz)
{
	pgd_t *pgdp;
	pud_t *pudp;
	pmd_t *pmdp;
	pte_t *ptep = NULL;

	pgdp = FUNC4(mm, addr);
	pudp = FUNC7(mm, pgdp, addr);
	if (!pudp)
		return NULL;

	if (sz == PUD_SIZE) {
		ptep = (pte_t *)pudp;
	} else if (sz == (CONT_PTE_SIZE)) {
		pmdp = FUNC5(mm, pudp, addr);

		FUNC2(addr & (sz - 1));
		/*
		 * Note that if this code were ever ported to the
		 * 32-bit arm platform then it will cause trouble in
		 * the case where CONFIG_HIGHPTE is set, since there
		 * will be no pte_unmap() to correspond with this
		 * pte_alloc_map().
		 */
		ptep = FUNC6(mm, pmdp, addr);
	} else if (sz == PMD_SIZE) {
		if (FUNC0(CONFIG_ARCH_WANT_HUGE_PMD_SHARE) &&
		    FUNC8(FUNC1(*pudp)))
			ptep = FUNC3(mm, addr, pudp);
		else
			ptep = (pte_t *)FUNC5(mm, pudp, addr);
	} else if (sz == (CONT_PMD_SIZE)) {
		pmdp = FUNC5(mm, pudp, addr);
		FUNC2(addr & (sz - 1));
		return (pte_t *)pmdp;
	}

	return ptep;
}