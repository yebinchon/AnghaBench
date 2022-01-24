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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct mm_struct*,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

pte_t *FUNC9(struct mm_struct *mm,
		       unsigned long addr, unsigned long sz)
{
	pgd_t *pgd;
	pud_t *pud;
	pmd_t *pmd;

	pgd = FUNC3(mm, addr);
	if (FUNC2(*pgd))
		return NULL;
	pud = FUNC8(pgd, addr);
	if (FUNC7(*pud))
		return NULL;
	if (FUNC1(*pud))
		return (pte_t *)pud;
	pmd = FUNC5(pud, addr);
	if (FUNC4(*pmd))
		return NULL;
	if (FUNC0(*pmd))
		return (pte_t *)pmd;
	return FUNC6(pmd, addr);
}