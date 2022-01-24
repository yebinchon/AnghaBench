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
struct vm_area_struct {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
typedef  int /*<<< orphan*/  p4d_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct vm_area_struct* FUNC1 (struct mm_struct*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*,int,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (struct mm_struct*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (struct mm_struct*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct vm_area_struct*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC19(struct mm_struct *mm)
{
	struct vm_area_struct *vma;
	spinlock_t *ptl;
	pgd_t *pgd;
	p4d_t *p4d;
	pud_t *pud;
	pmd_t *pmd;
	pte_t *pte;
	int i;

	FUNC0(&mm->mmap_sem);
	pgd = FUNC6(mm, 0xA0000);
	if (FUNC5(pgd))
		goto out;
	p4d = FUNC4(pgd, 0xA0000);
	if (FUNC3(p4d))
		goto out;
	pud = FUNC15(p4d, 0xA0000);
	if (FUNC14(pud))
		goto out;
	pmd = FUNC8(pud, 0xA0000);

	if (FUNC9(*pmd)) {
		vma = FUNC1(mm, 0xA0000);
		FUNC17(vma, pmd, 0xA0000);
	}
	if (FUNC7(pmd))
		goto out;
	pte = FUNC10(mm, pmd, 0xA0000, &ptl);
	for (i = 0; i < 32; i++) {
		if (FUNC11(*pte))
			FUNC16(pte, FUNC13(*pte));
		pte++;
	}
	FUNC12(pte, ptl);
out:
	FUNC18(&mm->mmap_sem);
	FUNC2(mm, 0xA0000, 0xA0000 + 32*PAGE_SIZE, PAGE_SHIFT, false);
}