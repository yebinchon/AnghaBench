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
struct vm_area_struct {int vm_flags; } ;
struct page {int /*<<< orphan*/  flags; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  PG_dcache_clean ; 
 int VM_EXEC ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct address_space*,struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct address_space*,struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*,struct page*) ; 
 struct address_space* FUNC4 (struct page*) ; 
 struct page* FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC10(struct vm_area_struct *vma,
		      unsigned long address, pte_t *ptep)
{
	pte_t pte = *ptep;
	unsigned long pfn = FUNC7(pte);
	struct page *page;
	struct address_space *mapping;

	FUNC8(vma, address, pte);

	if (!FUNC6(pfn))
		return;

	/*
	* The zero page is never written to, so never has any dirty
	* cache lines, and therefore never needs to be flushed.
	*/
	page = FUNC5(pfn);
	if (page == FUNC0(0))
		return;

	mapping = FUNC4(page);
	if (!FUNC9(PG_dcache_clean, &page->flags))
		FUNC1(mapping, page);

	if(mapping)
	{
		FUNC2(mapping, page);
		if (vma->vm_flags & VM_EXEC)
			FUNC3(vma, page);
	}
}