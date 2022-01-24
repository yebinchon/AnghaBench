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
struct mm_struct {int /*<<< orphan*/  pgd; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long H_PAGE_HASHPTE ; 
 scalar_t__ PAGE_SIZE ; 
 unsigned long FUNC1 (unsigned long,scalar_t__) ; 
 unsigned long FUNC2 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,unsigned long,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 unsigned long FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC12 (int) ; 

void FUNC13(struct mm_struct *mm, unsigned long start,
			      unsigned long end)
{
	bool is_thp;
	int hugepage_shift;
	unsigned long flags;

	start = FUNC1(start, PAGE_SIZE);
	end = FUNC2(end, PAGE_SIZE);

	FUNC0(!mm->pgd);

	/*
	 * Note: Normally, we should only ever use a batch within a
	 * PTE locked section. This violates the rule, but will work
	 * since we don't actually modify the PTEs, we just flush the
	 * hash while leaving the PTEs intact (including their reference
	 * to being hashed). This is not the most performance oriented
	 * way to do things but is fine for our needs here.
	 */
	FUNC9(flags);
	FUNC3();
	for (; start < end; start += PAGE_SIZE) {
		pte_t *ptep = FUNC5(mm->pgd, start, &is_thp,
						  &hugepage_shift);
		unsigned long pte;

		if (ptep == NULL)
			continue;
		pte = FUNC10(*ptep);
		if (is_thp)
			FUNC11(start, pte);
		if (!(pte & H_PAGE_HASHPTE))
			continue;
		if (FUNC12(is_thp))
			FUNC6(mm, start, (pmd_t *)ptep, pte);
		else
			FUNC7(mm, start, ptep, pte, hugepage_shift);
	}
	FUNC4();
	FUNC8(flags);
}