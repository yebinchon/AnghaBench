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
struct page {int dummy; } ;
struct kvmppc_spapr_tce_table {int /*<<< orphan*/  alloc_lock; struct page** pages; } ;

/* Variables and functions */
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int __GFP_ZERO ; 
 struct page* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct page *FUNC4(struct kvmppc_spapr_tce_table *stt,
		unsigned long sttpage)
{
	struct page *page = stt->pages[sttpage];

	if (page)
		return page;

	FUNC2(&stt->alloc_lock);
	page = stt->pages[sttpage];
	if (!page) {
		page = FUNC1(GFP_KERNEL | __GFP_ZERO);
		FUNC0(!page);
		if (page)
			stt->pages[sttpage] = page;
	}
	FUNC3(&stt->alloc_lock);

	return page;
}