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
 int /*<<< orphan*/  CRST_ALLOC_ORDER ; 
 int PAGE_SHIFT ; 
 int _CRST_ENTRIES ; 
 unsigned long _REGION3_ENTRY_EMPTY ; 
 scalar_t__ _REGION3_SIZE ; 
 unsigned long _REGION_ENTRY_ORIGIN ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gmap*,unsigned long,unsigned long*) ; 
 int FUNC3 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (struct gmap*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct page* FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct gmap *sg, unsigned long raddr,
				unsigned long *r3t)
{
	unsigned long *sgt;
	struct page *page;
	int i;

	FUNC0(!FUNC4(sg));
	for (i = 0; i < _CRST_ENTRIES; i++, raddr += _REGION3_SIZE) {
		if (!(r3t[i] & _REGION_ENTRY_ORIGIN))
			continue;
		sgt = (unsigned long *)(r3t[i] & _REGION_ENTRY_ORIGIN);
		r3t[i] = _REGION3_ENTRY_EMPTY;
		FUNC2(sg, raddr, sgt);
		/* Free segment table */
		page = FUNC6(FUNC3(sgt) >> PAGE_SHIFT);
		FUNC5(&page->lru);
		FUNC1(page, CRST_ALLOC_ORDER);
	}
}