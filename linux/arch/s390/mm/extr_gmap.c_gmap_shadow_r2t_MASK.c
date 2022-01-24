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
struct page {unsigned long index; int /*<<< orphan*/  lru; } ;
struct gmap {int edat_level; int /*<<< orphan*/  guest_table_lock; int /*<<< orphan*/  crst_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CRST_ALLOC_ORDER ; 
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long GMAP_SHADOW_FAKE_TABLE ; 
 unsigned long PAGE_SIZE ; 
 unsigned long _REGION1_MASK ; 
 int /*<<< orphan*/  _REGION2_ENTRY_EMPTY ; 
 unsigned long _REGION_ENTRY_INVALID ; 
 unsigned long _REGION_ENTRY_LENGTH ; 
 unsigned long _REGION_ENTRY_OFFSET ; 
 unsigned long _REGION_ENTRY_ORIGIN ; 
 unsigned long _REGION_ENTRY_PROTECT ; 
 unsigned long _REGION_ENTRY_TYPE_R1 ; 
 unsigned long _SHADOW_RMAP_REGION1 ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 struct page* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gmap*) ; 
 int FUNC5 (struct gmap*,unsigned long,unsigned long,unsigned long) ; 
 unsigned long* FUNC6 (struct gmap*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC7 (struct gmap*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct gmap *sg, unsigned long saddr, unsigned long r2t,
		    int fake)
{
	unsigned long raddr, origin, offset, len;
	unsigned long *s_r2t, *table;
	struct page *page;
	int rc;

	FUNC0(!FUNC4(sg));
	/* Allocate a shadow region second table */
	page = FUNC2(GFP_KERNEL, CRST_ALLOC_ORDER);
	if (!page)
		return -ENOMEM;
	page->index = r2t & _REGION_ENTRY_ORIGIN;
	if (fake)
		page->index |= GMAP_SHADOW_FAKE_TABLE;
	s_r2t = (unsigned long *) FUNC9(page);
	/* Install shadow region second table */
	FUNC10(&sg->guest_table_lock);
	table = FUNC6(sg, saddr, 4); /* get region-1 pointer */
	if (!table) {
		rc = -EAGAIN;		/* Race with unshadow */
		goto out_free;
	}
	if (!(*table & _REGION_ENTRY_INVALID)) {
		rc = 0;			/* Already established */
		goto out_free;
	} else if (*table & _REGION_ENTRY_ORIGIN) {
		rc = -EAGAIN;		/* Race with shadow */
		goto out_free;
	}
	FUNC3(s_r2t, _REGION2_ENTRY_EMPTY);
	/* mark as invalid as long as the parent table is not protected */
	*table = (unsigned long) s_r2t | _REGION_ENTRY_LENGTH |
		 _REGION_ENTRY_TYPE_R1 | _REGION_ENTRY_INVALID;
	if (sg->edat_level >= 1)
		*table |= (r2t & _REGION_ENTRY_PROTECT);
	FUNC8(&page->lru, &sg->crst_list);
	if (fake) {
		/* nothing to protect for fake tables */
		*table &= ~_REGION_ENTRY_INVALID;
		FUNC11(&sg->guest_table_lock);
		return 0;
	}
	FUNC11(&sg->guest_table_lock);
	/* Make r2t read-only in parent gmap page table */
	raddr = (saddr & _REGION1_MASK) | _SHADOW_RMAP_REGION1;
	origin = r2t & _REGION_ENTRY_ORIGIN;
	offset = ((r2t & _REGION_ENTRY_OFFSET) >> 6) * PAGE_SIZE;
	len = ((r2t & _REGION_ENTRY_LENGTH) + 1) * PAGE_SIZE - offset;
	rc = FUNC5(sg, raddr, origin + offset, len);
	FUNC10(&sg->guest_table_lock);
	if (!rc) {
		table = FUNC6(sg, saddr, 4);
		if (!table || (*table & _REGION_ENTRY_ORIGIN) !=
			      (unsigned long) s_r2t)
			rc = -EAGAIN;		/* Race with unshadow */
		else
			*table &= ~_REGION_ENTRY_INVALID;
	} else {
		FUNC7(sg, raddr);
	}
	FUNC11(&sg->guest_table_lock);
	return rc;
out_free:
	FUNC11(&sg->guest_table_lock);
	FUNC1(page, CRST_ALLOC_ORDER);
	return rc;
}