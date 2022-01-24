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

/* Variables and functions */
 scalar_t__ KERNBASE ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  _end ; 
 unsigned long max_phys_bits ; 
 int FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC14 (int /*<<< orphan*/ ) ; 

bool FUNC15(unsigned long addr)
{
	pgd_t *pgd;
	pud_t *pud;
	pmd_t *pmd;
	pte_t *pte;

	if ((long)addr < 0L) {
		unsigned long pa = FUNC0(addr);

		if ((pa >> max_phys_bits) != 0UL)
			return false;

		return FUNC1(pa >> PAGE_SHIFT);
	}

	if (addr >= (unsigned long) KERNBASE &&
	    addr < (unsigned long)&_end)
		return true;

	pgd = FUNC3(addr);
	if (FUNC2(*pgd))
		return 0;

	pud = FUNC13(pgd, addr);
	if (FUNC12(*pud))
		return 0;

	if (FUNC11(*pud))
		return FUNC1(FUNC14(*pud));

	pmd = FUNC6(pud, addr);
	if (FUNC5(*pmd))
		return 0;

	if (FUNC4(*pmd))
		return FUNC1(FUNC7(*pmd));

	pte = FUNC9(pmd, addr);
	if (FUNC8(*pte))
		return 0;

	return FUNC1(FUNC10(*pte));
}