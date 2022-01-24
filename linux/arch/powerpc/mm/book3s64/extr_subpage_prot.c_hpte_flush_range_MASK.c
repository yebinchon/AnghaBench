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
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct mm_struct*,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC6 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC11(struct mm_struct *mm, unsigned long addr,
			     int npages)
{
	pgd_t *pgd;
	pud_t *pud;
	pmd_t *pmd;
	pte_t *pte;
	spinlock_t *ptl;

	pgd = FUNC3(mm, addr);
	if (FUNC2(*pgd))
		return;
	pud = FUNC10(pgd, addr);
	if (FUNC9(*pud))
		return;
	pmd = FUNC5(pud, addr);
	if (FUNC4(*pmd))
		return;
	pte = FUNC6(mm, pmd, addr, &ptl);
	FUNC0();
	for (; npages > 0; --npages) {
		FUNC8(mm, addr, pte, 0, 0, 0);
		addr += PAGE_SIZE;
		++pte;
	}
	FUNC1();
	FUNC7(pte - 1, ptl);
}