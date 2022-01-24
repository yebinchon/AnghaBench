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
struct page {int /*<<< orphan*/  _refcount; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int FUNC1 (void*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int) ; 
 struct page* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 

void FUNC6(void *_table)
{
	unsigned int mask = (unsigned long) _table & 3;
	void *table = (void *)((unsigned long) _table ^ mask);
	struct page *page = FUNC4(FUNC1(table) >> PAGE_SHIFT);

	switch (mask) {
	case 0:		/* pmd, pud, or p4d */
		FUNC3((unsigned long) table, 2);
		break;
	case 1:		/* lower 2K of a 4K page table */
	case 2:		/* higher 2K of a 4K page table */
		mask = FUNC2(&page->_refcount, mask << (4 + 24));
		mask >>= 24;
		if (mask != 0)
			break;
		/* fallthrough */
	case 3:		/* 4K page table with pgstes */
		if (mask & 3)
			FUNC2(&page->_refcount, 3 << 24);
		FUNC5(page);
		FUNC0(page);
		break;
	}
}