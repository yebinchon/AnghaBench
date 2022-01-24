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
 int /*<<< orphan*/  PG_dcache_clean ; 
 int VM_EXEC ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct page*) ; 
 struct page* FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC8(struct vm_area_struct *vma, unsigned long addr,
	pte_t *ptep)
{
	unsigned long pfn = FUNC6(*ptep);
	struct page *page;

	if (!FUNC5(pfn))
		return;

	page = FUNC4(pfn);
	if (page == FUNC0(0))
		return;

	if (!FUNC7(PG_dcache_clean, &page->flags))
		FUNC1();

	if (FUNC3(page)) {
		if (vma->vm_flags & VM_EXEC)
			FUNC2();
	}
}