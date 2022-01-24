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
 unsigned long _REGION1_ENTRY_EMPTY ; 
 unsigned long _REGION1_INDEX ; 
 unsigned long _REGION1_SHIFT ; 
 scalar_t__ _REGION1_SIZE ; 
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
	unsigned long r1o, *r1e, *r2t;
	struct page *page;

	FUNC0(!FUNC6(sg));
	r1e = FUNC7(sg, raddr, 4); /* get region-1 pointer */
	if (!r1e || !(*r1e & _REGION_ENTRY_ORIGIN))
		return;
	FUNC4(sg, raddr, raddr + _REGION1_SIZE - 1);
	r1o = (unsigned long) (r1e - ((raddr & _REGION1_INDEX) >> _REGION1_SHIFT));
	FUNC5(r1o | _ASCE_TYPE_REGION1, raddr);
	r2t = (unsigned long *)(*r1e & _REGION_ENTRY_ORIGIN);
	*r1e = _REGION1_ENTRY_EMPTY;
	FUNC2(sg, raddr, r2t);
	/* Free region 2 table */
	page = FUNC9(FUNC3(r2t) >> PAGE_SHIFT);
	FUNC8(&page->lru);
	FUNC1(page, CRST_ALLOC_ORDER);
}