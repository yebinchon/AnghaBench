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
struct vm_area_struct {int dummy; } ;
struct page {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  PG_dcache_dirty ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 () ; 
 struct page* FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC9(struct vm_area_struct *vma, unsigned long address, pte_t *ptep)
{
	unsigned long pfn = FUNC7(*ptep);
	struct page *page;

	/* We don't have pte special.  As a result, we can be called with
	   an invalid pfn and we don't need to flush the kernel dcache page.
	   This occurs with FireGL card in C8000.  */
	if (!FUNC6(pfn))
		return;

	page = FUNC4(pfn);
	if (FUNC2(page) &&
	    FUNC8(PG_dcache_dirty, &page->flags)) {
		FUNC1(FUNC5(pfn));
		FUNC0(PG_dcache_dirty, &page->flags);
	} else if (FUNC3())
		FUNC1(FUNC5(pfn));
}