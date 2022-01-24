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
 unsigned long _ASCE_TYPE_SEGMENT ; 
 unsigned long _SEGMENT_ENTRY_EMPTY ; 
 unsigned long _SEGMENT_ENTRY_ORIGIN ; 
 unsigned long _SEGMENT_INDEX ; 
 unsigned long _SEGMENT_SHIFT ; 
 scalar_t__ _SEGMENT_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct gmap*,unsigned long,unsigned long*) ; 
 int FUNC2 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct gmap*,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct gmap*) ; 
 unsigned long* FUNC6 (struct gmap*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 struct page* FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct gmap *sg, unsigned long raddr)
{
	unsigned long sto, *ste, *pgt;
	struct page *page;

	FUNC0(!FUNC5(sg));
	ste = FUNC6(sg, raddr, 1); /* get segment pointer */
	if (!ste || !(*ste & _SEGMENT_ENTRY_ORIGIN))
		return;
	FUNC3(sg, raddr, raddr + _SEGMENT_SIZE - 1);
	sto = (unsigned long) (ste - ((raddr & _SEGMENT_INDEX) >> _SEGMENT_SHIFT));
	FUNC4(sto | _ASCE_TYPE_SEGMENT, raddr);
	pgt = (unsigned long *)(*ste & _SEGMENT_ENTRY_ORIGIN);
	*ste = _SEGMENT_ENTRY_EMPTY;
	FUNC1(sg, raddr, pgt);
	/* Free page table */
	page = FUNC9(FUNC2(pgt) >> PAGE_SHIFT);
	FUNC7(&page->lru);
	FUNC8(page);
}