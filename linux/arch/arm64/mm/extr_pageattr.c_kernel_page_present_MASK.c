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
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rodata_full ; 

bool FUNC13(struct page *page)
{
	pgd_t *pgdp;
	pud_t *pudp, pud;
	pmd_t *pmdp, pmd;
	pte_t *ptep;
	unsigned long addr = (unsigned long)FUNC2(page);

	if (!FUNC1() && !rodata_full)
		return true;

	pgdp = FUNC4(addr);
	if (FUNC3(FUNC0(*pgdp)))
		return false;

	pudp = FUNC11(pgdp, addr);
	pud = FUNC0(*pudp);
	if (FUNC10(pud))
		return false;
	if (FUNC12(pud))
		return true;

	pmdp = FUNC6(pudp, addr);
	pmd = FUNC0(*pmdp);
	if (FUNC5(pmd))
		return false;
	if (FUNC7(pmd))
		return true;

	ptep = FUNC8(pmdp, addr);
	return FUNC9(FUNC0(*ptep));
}