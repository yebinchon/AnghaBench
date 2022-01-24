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
struct page {int /*<<< orphan*/  pt_frag_refcount; } ;
struct TYPE_2__ {void* pmd_frag; } ;
struct mm_struct {int /*<<< orphan*/  page_table_lock; TYPE_1__ context; } ;
typedef  void pmd_t ;
typedef  int gfp_t ;

/* Variables and functions */
 int GFP_KERNEL_ACCOUNT ; 
 int PMD_FRAG_NR ; 
 int PMD_FRAG_SIZE ; 
 int __GFP_ACCOUNT ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct page*,int /*<<< orphan*/ ) ; 
 struct page* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct mm_struct init_mm ; 
 scalar_t__ FUNC3 (int) ; 
 void* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static pmd_t *FUNC8(struct mm_struct *mm)
{
	void *ret = NULL;
	struct page *page;
	gfp_t gfp = GFP_KERNEL_ACCOUNT | __GFP_ZERO;

	if (mm == &init_mm)
		gfp &= ~__GFP_ACCOUNT;
	page = FUNC1(gfp);
	if (!page)
		return NULL;
	if (!FUNC5(page)) {
		FUNC0(page, 0);
		return NULL;
	}

	FUNC2(&page->pt_frag_refcount, 1);

	ret = FUNC4(page);
	/*
	 * if we support only one fragment just return the
	 * allocated page.
	 */
	if (PMD_FRAG_NR == 1)
		return ret;

	FUNC6(&mm->page_table_lock);
	/*
	 * If we find pgtable_page set, we return
	 * the allocated page with single fragement
	 * count.
	 */
	if (FUNC3(!mm->context.pmd_frag)) {
		FUNC2(&page->pt_frag_refcount, PMD_FRAG_NR);
		mm->context.pmd_frag = ret + PMD_FRAG_SIZE;
	}
	FUNC7(&mm->page_table_lock);

	return (pmd_t *)ret;
}