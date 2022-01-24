#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {scalar_t__ vm_mm; int vm_flags; } ;
struct page {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  pte_t ;
struct TYPE_2__ {scalar_t__ active_mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  NDS32_SR_TLB_VPN ; 
 int /*<<< orphan*/  PG_dcache_dirty ; 
 int VM_EXEC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int) ; 
 TYPE_1__* current ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 struct page* FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 unsigned long FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC12(struct vm_area_struct *vma, unsigned long addr,
		      pte_t * pte)
{
	struct page *page;
	unsigned long pfn = FUNC10(*pte);
	unsigned long flags;

	if (!FUNC9(pfn))
		return;

	if (vma->vm_mm == current->active_mm) {
		FUNC7(flags);
		FUNC1(addr, NDS32_SR_TLB_VPN);
		FUNC2(*pte);
		FUNC0();
		FUNC6(flags);
	}
	page = FUNC8(pfn);

	if ((FUNC11(PG_dcache_dirty, &page->flags)) ||
	    (vma->vm_flags & VM_EXEC)) {
		unsigned long kaddr;
		FUNC7(flags);
		kaddr = (unsigned long)FUNC4(page);
		FUNC3(kaddr, vma->vm_flags & VM_EXEC);
		FUNC5((void *)kaddr);
		FUNC6(flags);
	}
}