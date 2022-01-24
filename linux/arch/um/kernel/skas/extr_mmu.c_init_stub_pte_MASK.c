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
 int ENOMEM ; 
 int /*<<< orphan*/  _PAGE_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/ * FUNC3 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 

__attribute__((used)) static int FUNC10(struct mm_struct *mm, unsigned long proc,
			 unsigned long kernel)
{
	pgd_t *pgd;
	pud_t *pud;
	pmd_t *pmd;
	pte_t *pte;

	pgd = FUNC2(mm, proc);
	pud = FUNC7(mm, pgd, proc);
	if (!pud)
		goto out;

	pmd = FUNC3(mm, pud, proc);
	if (!pmd)
		goto out_pmd;

	pte = FUNC5(mm, pmd, proc);
	if (!pte)
		goto out_pte;

	*pte = FUNC1(FUNC9(kernel), FUNC0(_PAGE_PRESENT));
	*pte = FUNC6(*pte);
	return 0;

 out_pte:
	FUNC4(mm, pmd);
 out_pmd:
	FUNC8(mm, pud);
 out:
	return -ENOMEM;
}