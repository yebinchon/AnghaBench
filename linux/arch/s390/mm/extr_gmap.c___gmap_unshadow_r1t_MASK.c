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
 unsigned long _ASCE_TYPE_REGION1 ; 
 int _CRST_ENTRIES ; 
 unsigned long _REGION1_ENTRY_EMPTY ; 
 scalar_t__ _REGION1_SIZE ; 
 unsigned long _REGION_ENTRY_ORIGIN ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gmap*,unsigned long,unsigned long*) ; 
 int FUNC3 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct gmap*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct page* FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct gmap *sg, unsigned long raddr,
				unsigned long *r1t)
{
	unsigned long asce, *r2t;
	struct page *page;
	int i;

	FUNC0(!FUNC5(sg));
	asce = (unsigned long) r1t | _ASCE_TYPE_REGION1;
	for (i = 0; i < _CRST_ENTRIES; i++, raddr += _REGION1_SIZE) {
		if (!(r1t[i] & _REGION_ENTRY_ORIGIN))
			continue;
		r2t = (unsigned long *)(r1t[i] & _REGION_ENTRY_ORIGIN);
		FUNC2(sg, raddr, r2t);
		/* Clear entry and flush translation r1t -> r2t */
		FUNC4(asce, raddr);
		r1t[i] = _REGION1_ENTRY_EMPTY;
		/* Free region 2 table */
		page = FUNC7(FUNC3(r2t) >> PAGE_SHIFT);
		FUNC6(&page->lru);
		FUNC1(page, CRST_ALLOC_ORDER);
	}
}