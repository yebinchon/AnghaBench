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
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct mm_struct*,unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned long FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC14(struct mm_struct *mm,
				unsigned long addr, unsigned long end)
{
	pgd_t *pgd;
	pud_t *pud;
	pmd_t *pmd;
	pte_t *pte;
	pte_t entry;
	spinlock_t *ptl;
	unsigned long paddr;

	if (!mm)
		return; /* No way to find physical address of page */

	pgd = FUNC1(mm, addr);
	if (FUNC0(*pgd))
		return;

	pud = FUNC12(pgd, addr);
	if (FUNC11(*pud) || FUNC10(*pud))
		return;

	pmd = FUNC4(pud, addr);
	if (FUNC3(*pmd) || FUNC2(*pmd))
		return;

	pte = FUNC6(mm, pmd, addr, &ptl);
	do {
		entry = *pte;
		if (FUNC5(entry) || !FUNC7(entry))
			continue;
		paddr = FUNC9(entry) & PAGE_MASK;
		FUNC13(paddr, addr);
	} while (pte++, addr += PAGE_SIZE, addr != end);
	FUNC8(pte - 1, ptl);
}