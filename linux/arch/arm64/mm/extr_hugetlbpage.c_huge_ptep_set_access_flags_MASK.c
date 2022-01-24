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
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 size_t PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC13(struct vm_area_struct *vma,
			       unsigned long addr, pte_t *ptep,
			       pte_t pte, int dirty)
{
	int ncontig, i;
	size_t pgsize = 0;
	unsigned long pfn = FUNC8(pte), dpfn;
	pgprot_t hugeprot;
	pte_t orig_pte;

	if (!FUNC4(pte))
		return FUNC11(vma, addr, ptep, pte, dirty);

	ncontig = FUNC1(vma->vm_mm, addr, ptep, &pgsize);
	dpfn = pgsize >> PAGE_SHIFT;

	if (!FUNC0(ptep, pte, ncontig))
		return 0;

	orig_pte = FUNC2(vma->vm_mm, addr, ptep, pgsize, ncontig);

	/* Make sure we don't lose the dirty or young state */
	if (FUNC5(orig_pte))
		pte = FUNC6(pte);

	if (FUNC10(orig_pte))
		pte = FUNC7(pte);

	hugeprot = FUNC9(pte);
	for (i = 0; i < ncontig; i++, ptep++, addr += pgsize, pfn += dpfn)
		FUNC12(vma->vm_mm, addr, ptep, FUNC3(pfn, hugeprot));

	return 1;
}