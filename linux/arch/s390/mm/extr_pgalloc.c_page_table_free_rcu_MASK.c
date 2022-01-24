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
struct page {int /*<<< orphan*/  lru; int /*<<< orphan*/  _refcount; } ;
struct mmu_gather {struct mm_struct* mm; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  pgtable_list; } ;
struct mm_struct {TYPE_1__ context; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int PAGE_MASK ; 
 unsigned int PAGE_SHIFT ; 
 int PTRS_PER_PTE ; 
 unsigned int FUNC0 (unsigned long*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*,unsigned long*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct mm_struct*) ; 
 struct page* FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct mmu_gather*,unsigned long*) ; 

void FUNC10(struct mmu_gather *tlb, unsigned long *table,
			 unsigned long vmaddr)
{
	struct mm_struct *mm;
	struct page *page;
	unsigned int bit, mask;

	mm = tlb->mm;
	page = FUNC6(FUNC0(table) >> PAGE_SHIFT);
	if (FUNC5(mm)) {
		FUNC2(mm, table, vmaddr);
		table = (unsigned long *) (FUNC0(table) | 3);
		FUNC9(tlb, table);
		return;
	}
	bit = (FUNC0(table) & ~PAGE_MASK) / (PTRS_PER_PTE*sizeof(pte_t));
	FUNC7(&mm->context.lock);
	mask = FUNC1(&page->_refcount, 0x11U << (bit + 24));
	mask >>= 24;
	if (mask & 3)
		FUNC3(&page->lru, &mm->context.pgtable_list);
	else
		FUNC4(&page->lru);
	FUNC8(&mm->context.lock);
	table = (unsigned long *) (FUNC0(table) | (1U << bit));
	FUNC9(tlb, table);
}