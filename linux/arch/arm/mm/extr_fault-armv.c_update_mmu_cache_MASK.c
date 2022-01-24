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
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct address_space*,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,unsigned long) ; 
 struct address_space* FUNC5 (struct page*) ; 
 struct page* FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC10(struct vm_area_struct *vma, unsigned long addr,
	pte_t *ptep)
{
	unsigned long pfn = FUNC8(*ptep);
	struct address_space *mapping;
	struct page *page;

	if (!FUNC7(pfn))
		return;

	/*
	 * The zero page is never written to, so never has any dirty
	 * cache lines, and therefore never needs to be flushed.
	 */
	page = FUNC6(pfn);
	if (page == FUNC0(0))
		return;

	mapping = FUNC5(page);
	if (!FUNC9(PG_dcache_clean, &page->flags))
		FUNC1(mapping, page);
	if (mapping) {
		if (FUNC3())
			FUNC4(mapping, vma, addr, ptep, pfn);
		else if (vma->vm_flags & VM_EXEC)
			FUNC2();
	}
}