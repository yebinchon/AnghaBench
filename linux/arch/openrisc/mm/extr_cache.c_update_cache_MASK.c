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
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  PG_dc_clean ; 
 int VM_EXEC ; 
 struct page* FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct vm_area_struct *vma, unsigned long address,
	pte_t *pte)
{
	unsigned long pfn = FUNC1(*pte) >> PAGE_SHIFT;
	struct page *page = FUNC0(pfn);
	int dirty = !FUNC3(PG_dc_clean, &page->flags);

	/*
	 * Since icaches do not snoop for updated data on OpenRISC, we
	 * must write back and invalidate any dirty pages manually. We
	 * can skip data pages, since they will not end up in icaches.
	 */
	if ((vma->vm_flags & VM_EXEC) && dirty)
		FUNC2(page);
}