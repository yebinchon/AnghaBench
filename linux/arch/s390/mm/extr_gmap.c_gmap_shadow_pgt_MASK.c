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
struct gmap {int /*<<< orphan*/  guest_table_lock; int /*<<< orphan*/  pt_list; int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int ENOMEM ; 
 unsigned long GMAP_SHADOW_FAKE_TABLE ; 
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 unsigned long _SEGMENT_ENTRY ; 
 unsigned long _SEGMENT_ENTRY_INVALID ; 
 unsigned long _SEGMENT_ENTRY_LARGE ; 
 unsigned long _SEGMENT_ENTRY_ORIGIN ; 
 unsigned long _SEGMENT_ENTRY_PROTECT ; 
 unsigned long _SEGMENT_MASK ; 
 unsigned long _SHADOW_RMAP_SEGMENT ; 
 int /*<<< orphan*/  FUNC1 (struct gmap*) ; 
 int FUNC2 (struct gmap*,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long* FUNC3 (struct gmap*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gmap*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct page* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 scalar_t__ FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct gmap *sg, unsigned long saddr, unsigned long pgt,
		    int fake)
{
	unsigned long raddr, origin;
	unsigned long *s_pgt, *table;
	struct page *page;
	int rc;

	FUNC0(!FUNC1(sg) || (pgt & _SEGMENT_ENTRY_LARGE));
	/* Allocate a shadow page table */
	page = FUNC6(sg->mm);
	if (!page)
		return -ENOMEM;
	page->index = pgt & _SEGMENT_ENTRY_ORIGIN;
	if (fake)
		page->index |= GMAP_SHADOW_FAKE_TABLE;
	s_pgt = (unsigned long *) FUNC8(page);
	/* Install shadow page table */
	FUNC9(&sg->guest_table_lock);
	table = FUNC3(sg, saddr, 1); /* get segment pointer */
	if (!table) {
		rc = -EAGAIN;		/* Race with unshadow */
		goto out_free;
	}
	if (!(*table & _SEGMENT_ENTRY_INVALID)) {
		rc = 0;			/* Already established */
		goto out_free;
	} else if (*table & _SEGMENT_ENTRY_ORIGIN) {
		rc = -EAGAIN;		/* Race with shadow */
		goto out_free;
	}
	/* mark as invalid as long as the parent table is not protected */
	*table = (unsigned long) s_pgt | _SEGMENT_ENTRY |
		 (pgt & _SEGMENT_ENTRY_PROTECT) | _SEGMENT_ENTRY_INVALID;
	FUNC5(&page->lru, &sg->pt_list);
	if (fake) {
		/* nothing to protect for fake tables */
		*table &= ~_SEGMENT_ENTRY_INVALID;
		FUNC10(&sg->guest_table_lock);
		return 0;
	}
	FUNC10(&sg->guest_table_lock);
	/* Make pgt read-only in parent gmap page table (not the pgste) */
	raddr = (saddr & _SEGMENT_MASK) | _SHADOW_RMAP_SEGMENT;
	origin = pgt & _SEGMENT_ENTRY_ORIGIN & PAGE_MASK;
	rc = FUNC2(sg, raddr, origin, PAGE_SIZE);
	FUNC9(&sg->guest_table_lock);
	if (!rc) {
		table = FUNC3(sg, saddr, 1);
		if (!table || (*table & _SEGMENT_ENTRY_ORIGIN) !=
			      (unsigned long) s_pgt)
			rc = -EAGAIN;		/* Race with unshadow */
		else
			*table &= ~_SEGMENT_ENTRY_INVALID;
	} else {
		FUNC4(sg, raddr);
	}
	FUNC10(&sg->guest_table_lock);
	return rc;
out_free:
	FUNC10(&sg->guest_table_lock);
	FUNC7(page);
	return rc;

}