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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC10(struct mm_struct *mm,
			     unsigned long addr, pte_t *ptep)
{
	unsigned long pfn, dpfn;
	pgprot_t hugeprot;
	int ncontig, i;
	size_t pgsize;
	pte_t pte;

	if (!FUNC4(FUNC0(*ptep))) {
		FUNC8(mm, addr, ptep);
		return;
	}

	ncontig = FUNC1(mm, addr, ptep, &pgsize);
	dpfn = pgsize >> PAGE_SHIFT;

	pte = FUNC2(mm, addr, ptep, pgsize, ncontig);
	pte = FUNC7(pte);

	hugeprot = FUNC6(pte);
	pfn = FUNC5(pte);

	for (i = 0; i < ncontig; i++, ptep++, addr += pgsize, pfn += dpfn)
		FUNC9(mm, addr, ptep, FUNC3(pfn, hugeprot));
}