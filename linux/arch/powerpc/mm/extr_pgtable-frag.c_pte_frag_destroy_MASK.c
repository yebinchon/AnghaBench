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
struct page {int /*<<< orphan*/  pt_frag_refcount; } ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 scalar_t__ PTE_FRAG_NR ; 
 unsigned long PTE_FRAG_SIZE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 struct page* FUNC3 (void*) ; 

void FUNC4(void *pte_frag)
{
	int count;
	struct page *page;

	page = FUNC3(pte_frag);
	/* drop all the pending references */
	count = ((unsigned long)pte_frag & ~PAGE_MASK) >> PTE_FRAG_SIZE_SHIFT;
	/* We allow PTE_FRAG_NR fragments from a PTE page */
	if (FUNC1(PTE_FRAG_NR - count, &page->pt_frag_refcount)) {
		FUNC2(page);
		FUNC0(page);
	}
}