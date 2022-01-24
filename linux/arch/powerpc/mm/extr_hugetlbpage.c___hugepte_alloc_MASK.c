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
struct kmem_cache {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  hugepd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  CONFIG_PPC_8xx ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int HUGEPD_SHIFT_MASK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct kmem_cache* FUNC2 (unsigned int) ; 
 unsigned int PTE_INDEX_SIZE ; 
 unsigned int PTE_T_ORDER ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/ * FUNC7 (struct kmem_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct kmem_cache*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct mm_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(struct mm_struct *mm, hugepd_t *hpdp,
			   unsigned long address, unsigned int pdshift,
			   unsigned int pshift, spinlock_t *ptl)
{
	struct kmem_cache *cachep;
	pte_t *new;
	int i;
	int num_hugepd;

	if (pshift >= pdshift) {
		cachep = FUNC2(PTE_T_ORDER);
		num_hugepd = 1 << (pshift - pdshift);
	} else if (FUNC1(CONFIG_PPC_8xx)) {
		cachep = FUNC2(PTE_INDEX_SIZE);
		num_hugepd = 1;
	} else {
		cachep = FUNC2(pdshift - pshift);
		num_hugepd = 1;
	}

	if (!cachep) {
		FUNC3(1, "No page table cache created for hugetlb tables");
		return -ENOMEM;
	}

	new = FUNC7(cachep, FUNC10(mm, GFP_KERNEL));

	FUNC0(pshift > HUGEPD_SHIFT_MASK);
	FUNC0((unsigned long)new & HUGEPD_SHIFT_MASK);

	if (!new)
		return -ENOMEM;

	/*
	 * Make sure other cpus find the hugepd set only after a
	 * properly initialized page table is visible to them.
	 * For more details look for comment in __pte_alloc().
	 */
	FUNC11();

	FUNC12(ptl);
	/*
	 * We have multiple higher-level entries that point to the same
	 * actual pte location.  Fill in each as we go and backtrack on error.
	 * We need all of these so the DTLB pgtable walk code can find the
	 * right higher-level entry without knowing if it's a hugepage or not.
	 */
	for (i = 0; i < num_hugepd; i++, hpdp++) {
		if (FUNC14(!FUNC5(*hpdp)))
			break;
		FUNC6(hpdp, new, pshift);
	}
	/* If we bailed from the for loop early, an error occurred, clean up */
	if (i < num_hugepd) {
		for (i = i - 1 ; i >= 0; i--, hpdp--)
			*hpdp = FUNC4(0);
		FUNC8(cachep, new);
	} else {
		FUNC9(new);
	}
	FUNC13(ptl);
	return 0;
}