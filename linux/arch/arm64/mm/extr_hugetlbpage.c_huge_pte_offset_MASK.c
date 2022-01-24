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
 unsigned long CONT_PMD_MASK ; 
 unsigned long CONT_PMD_SIZE ; 
 unsigned long CONT_PTE_MASK ; 
 unsigned long CONT_PTE_SIZE ; 
 unsigned long PMD_SIZE ; 
 unsigned long PUD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

pte_t *FUNC12(struct mm_struct *mm,
		       unsigned long addr, unsigned long sz)
{
	pgd_t *pgdp;
	pud_t *pudp, pud;
	pmd_t *pmdp, pmd;

	pgdp = FUNC1(mm, addr);
	if (!FUNC2(FUNC0(*pgdp)))
		return NULL;

	pudp = FUNC10(pgdp, addr);
	pud = FUNC0(*pudp);
	if (sz != PUD_SIZE && FUNC9(pud))
		return NULL;
	/* hugepage or swap? */
	if (FUNC8(pud) || !FUNC11(pud))
		return (pte_t *)pudp;
	/* table; check the next level */

	if (sz == CONT_PMD_SIZE)
		addr &= CONT_PMD_MASK;

	pmdp = FUNC5(pudp, addr);
	pmd = FUNC0(*pmdp);
	if (!(sz == PMD_SIZE || sz == CONT_PMD_SIZE) &&
	    FUNC4(pmd))
		return NULL;
	if (FUNC3(pmd) || !FUNC6(pmd))
		return (pte_t *)pmdp;

	if (sz == CONT_PTE_SIZE)
		return FUNC7(pmdp, (addr & CONT_PTE_MASK));

	return NULL;
}