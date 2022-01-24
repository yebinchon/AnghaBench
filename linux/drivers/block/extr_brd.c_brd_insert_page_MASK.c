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
struct page {int index; } ;
struct brd_device {int /*<<< orphan*/  brd_lock; int /*<<< orphan*/  brd_pages; } ;
typedef  int sector_t ;
typedef  int pgoff_t ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int GFP_NOIO ; 
 int PAGE_SECTORS_SHIFT ; 
 int __GFP_HIGHMEM ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct page* FUNC2 (int) ; 
 struct page* FUNC3 (struct brd_device*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,struct page*) ; 
 struct page* FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct page *FUNC10(struct brd_device *brd, sector_t sector)
{
	pgoff_t idx;
	struct page *page;
	gfp_t gfp_flags;

	page = FUNC3(brd, sector);
	if (page)
		return page;

	/*
	 * Must use NOIO because we don't want to recurse back into the
	 * block or filesystem layers from page reclaim.
	 */
	gfp_flags = GFP_NOIO | __GFP_ZERO | __GFP_HIGHMEM;
	page = FUNC2(gfp_flags);
	if (!page)
		return NULL;

	if (FUNC6(GFP_NOIO)) {
		FUNC1(page);
		return NULL;
	}

	FUNC8(&brd->brd_lock);
	idx = sector >> PAGE_SECTORS_SHIFT;
	page->index = idx;
	if (FUNC4(&brd->brd_pages, idx, page)) {
		FUNC1(page);
		page = FUNC5(&brd->brd_pages, idx);
		FUNC0(!page);
		FUNC0(page->index != idx);
	}
	FUNC9(&brd->brd_lock);

	FUNC7();

	return page;
}