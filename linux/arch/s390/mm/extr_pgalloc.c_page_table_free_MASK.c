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
struct page {int /*<<< orphan*/  _refcount; int /*<<< orphan*/  lru; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  pgtable_list; } ;
struct mm_struct {TYPE_1__ context; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 int PTRS_PER_PTE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int FUNC1 (unsigned long*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*) ; 
 struct page* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct mm_struct *mm, unsigned long *table)
{
	struct page *page;
	unsigned int bit, mask;

	page = FUNC6(FUNC1(table) >> PAGE_SHIFT);
	if (!FUNC5(mm)) {
		/* Free 2K page table fragment of a 4K page */
		bit = (FUNC1(table) & ~PAGE_MASK)/(PTRS_PER_PTE*sizeof(pte_t));
		FUNC8(&mm->context.lock);
		mask = FUNC2(&page->_refcount, 1U << (bit + 24));
		mask >>= 24;
		if (mask & 3)
			FUNC3(&page->lru, &mm->context.pgtable_list);
		else
			FUNC4(&page->lru);
		FUNC9(&mm->context.lock);
		if (mask != 0)
			return;
	} else {
		FUNC2(&page->_refcount, 3U << 24);
	}

	FUNC7(page);
	FUNC0(page);
}