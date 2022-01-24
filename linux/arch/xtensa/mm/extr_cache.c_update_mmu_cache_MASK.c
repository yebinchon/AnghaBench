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
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 unsigned long DCACHE_ALIAS_MASK ; 
 int /*<<< orphan*/  PG_arch_1 ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 unsigned long TLBTEMP_BASE_1 ; 
 int VM_EXEC ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct vm_area_struct*,unsigned long) ; 
 scalar_t__ FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 unsigned long FUNC9 (struct page*) ; 
 struct page* FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long) ; 
 unsigned long FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC15(struct vm_area_struct * vma, unsigned long addr, pte_t *ptep)
{
	unsigned long pfn = FUNC12(*ptep);
	struct page *page;

	if (!FUNC11(pfn))
		return;

	page = FUNC10(pfn);

	/* Invalidate old entry in TLBs */

	FUNC6(vma, addr);

#if (DCACHE_WAY_SIZE > PAGE_SIZE)

	if (!PageReserved(page) && test_bit(PG_arch_1, &page->flags)) {
		unsigned long phys = page_to_phys(page);
		unsigned long tmp;

		tmp = TLBTEMP_BASE_1 + (phys & DCACHE_ALIAS_MASK);
		__flush_invalidate_dcache_page_alias(tmp, phys);
		tmp = TLBTEMP_BASE_1 + (addr & DCACHE_ALIAS_MASK);
		__flush_invalidate_dcache_page_alias(tmp, phys);
		__invalidate_icache_page_alias(tmp, phys);

		clear_bit(PG_arch_1, &page->flags);
	}
#else
	if (!FUNC0(page) && !FUNC14(PG_arch_1, &page->flags)
	    && (vma->vm_flags & VM_EXEC) != 0) {
		unsigned long paddr = (unsigned long)FUNC7(page);
		FUNC1(paddr);
		FUNC3(paddr);
		FUNC13(PG_arch_1, &page->flags);
		FUNC8((void *)paddr);
	}
#endif
}