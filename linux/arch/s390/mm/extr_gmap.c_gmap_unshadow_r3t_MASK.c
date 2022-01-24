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
 unsigned long _ASCE_TYPE_REGION2 ; 
 unsigned long _REGION2_ENTRY_EMPTY ; 
 unsigned long _REGION2_INDEX ; 
 unsigned long _REGION2_SHIFT ; 
 scalar_t__ _REGION2_SIZE ; 
 unsigned long _REGION_ENTRY_ORIGIN ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gmap*,unsigned long,unsigned long*) ; 
 int FUNC3 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (struct gmap*,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct gmap*) ; 
 unsigned long* FUNC7 (struct gmap*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct page* FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct gmap *sg, unsigned long raddr)
{
	unsigned long r2o, *r2e, *r3t;
	struct page *page;

	FUNC0(!FUNC6(sg));
	r2e = FUNC7(sg, raddr, 3); /* get region-2 pointer */
	if (!r2e || !(*r2e & _REGION_ENTRY_ORIGIN))
		return;
	FUNC4(sg, raddr, raddr + _REGION2_SIZE - 1);
	r2o = (unsigned long) (r2e - ((raddr & _REGION2_INDEX) >> _REGION2_SHIFT));
	FUNC5(r2o | _ASCE_TYPE_REGION2, raddr);
	r3t = (unsigned long *)(*r2e & _REGION_ENTRY_ORIGIN);
	*r2e = _REGION2_ENTRY_EMPTY;
	FUNC2(sg, raddr, r3t);
	/* Free region 3 table */
	page = FUNC9(FUNC3(r3t) >> PAGE_SHIFT);
	FUNC8(&page->lru);
	FUNC1(page, CRST_ALLOC_ORDER);
}