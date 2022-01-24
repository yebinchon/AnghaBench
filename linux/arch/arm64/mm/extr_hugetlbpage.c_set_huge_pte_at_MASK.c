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
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 size_t PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,size_t,int) ; 
 int FUNC2 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC9(struct mm_struct *mm, unsigned long addr,
			    pte_t *ptep, pte_t pte)
{
	size_t pgsize;
	int i;
	int ncontig;
	unsigned long pfn, dpfn;
	pgprot_t hugeprot;

	/*
	 * Code needs to be expanded to handle huge swap and migration
	 * entries. Needed for HUGETLB and MEMORY_FAILURE.
	 */
	FUNC0(!FUNC7(pte));

	if (!FUNC4(pte)) {
		FUNC8(mm, addr, ptep, pte);
		return;
	}

	ncontig = FUNC2(mm, addr, ptep, &pgsize);
	pfn = FUNC5(pte);
	dpfn = pgsize >> PAGE_SHIFT;
	hugeprot = FUNC6(pte);

	FUNC1(mm, addr, ptep, pgsize, ncontig);

	for (i = 0; i < ncontig; i++, ptep++, addr += pgsize, pfn += dpfn)
		FUNC8(mm, addr, ptep, FUNC3(pfn, hugeprot));
}