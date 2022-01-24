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
struct mm_struct {int /*<<< orphan*/  page_table_lock; int /*<<< orphan*/  context; } ;
typedef  void pte_t ;

/* Variables and functions */
 int PGALLOC_GFP ; 
 int PTE_FRAG_NR ; 
 int PTE_FRAG_SIZE ; 
 int __GFP_ACCOUNT ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int) ; 
 void* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static pte_t *FUNC10(struct mm_struct *mm, int kernel)
{
	void *ret = NULL;
	struct page *page;

	if (!kernel) {
		page = FUNC1(PGALLOC_GFP | __GFP_ACCOUNT);
		if (!page)
			return NULL;
		if (!FUNC5(page)) {
			FUNC0(page);
			return NULL;
		}
	} else {
		page = FUNC1(PGALLOC_GFP);
		if (!page)
			return NULL;
	}

	FUNC2(&page->pt_frag_refcount, 1);

	ret = FUNC4(page);
	/*
	 * if we support only one fragment just return the
	 * allocated page.
	 */
	if (PTE_FRAG_NR == 1)
		return ret;
	FUNC8(&mm->page_table_lock);
	/*
	 * If we find pgtable_page set, we return
	 * the allocated page with single fragement
	 * count.
	 */
	if (FUNC3(!FUNC6(&mm->context))) {
		FUNC2(&page->pt_frag_refcount, PTE_FRAG_NR);
		FUNC7(&mm->context, ret + PTE_FRAG_SIZE);
	}
	FUNC9(&mm->page_table_lock);

	return (pte_t *)ret;
}