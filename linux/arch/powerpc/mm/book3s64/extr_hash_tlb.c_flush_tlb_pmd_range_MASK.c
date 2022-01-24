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
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 unsigned long H_PAGE_HASHPTE ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  PMD_SIZE ; 
 int PTRS_PER_PTE ; 
 unsigned long FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct mm_struct *mm, pmd_t *pmd, unsigned long addr)
{
	pte_t *pte;
	pte_t *start_pte;
	unsigned long flags;

	addr = FUNC0(addr, PMD_SIZE);
	/*
	 * Note: Normally, we should only ever use a batch within a
	 * PTE locked section. This violates the rule, but will work
	 * since we don't actually modify the PTEs, we just flush the
	 * hash while leaving the PTEs intact (including their reference
	 * to being hashed). This is not the most performance oriented
	 * way to do things but is fine for our needs here.
	 */
	FUNC5(flags);
	FUNC1();
	start_pte = FUNC6(pmd, addr);
	for (pte = start_pte; pte < start_pte + PTRS_PER_PTE; pte++) {
		unsigned long pteval = FUNC7(*pte);
		if (pteval & H_PAGE_HASHPTE)
			FUNC3(mm, addr, pte, pteval, 0);
		addr += PAGE_SIZE;
	}
	FUNC2();
	FUNC4(flags);
}