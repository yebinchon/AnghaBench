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
struct page {int /*<<< orphan*/  lru; } ;
struct gmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PAGE_SHIFT ; 
 int _CRST_ENTRIES ; 
 unsigned long _REGION_ENTRY_ORIGIN ; 
 unsigned long _SEGMENT_ENTRY_EMPTY ; 
 unsigned long _SEGMENT_ENTRY_ORIGIN ; 
 scalar_t__ _SEGMENT_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct gmap*,unsigned long,unsigned long*) ; 
 int FUNC2 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct gmap*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 struct page* FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct gmap *sg, unsigned long raddr,
				unsigned long *sgt)
{
	unsigned long *pgt;
	struct page *page;
	int i;

	FUNC0(!FUNC3(sg));
	for (i = 0; i < _CRST_ENTRIES; i++, raddr += _SEGMENT_SIZE) {
		if (!(sgt[i] & _SEGMENT_ENTRY_ORIGIN))
			continue;
		pgt = (unsigned long *)(sgt[i] & _REGION_ENTRY_ORIGIN);
		sgt[i] = _SEGMENT_ENTRY_EMPTY;
		FUNC1(sg, raddr, pgt);
		/* Free page table */
		page = FUNC6(FUNC2(pgt) >> PAGE_SHIFT);
		FUNC4(&page->lru);
		FUNC5(page);
	}
}