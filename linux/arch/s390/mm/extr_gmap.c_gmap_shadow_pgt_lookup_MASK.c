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
struct page {unsigned long index; } ;
struct gmap {int /*<<< orphan*/  guest_table_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 unsigned long GMAP_SHADOW_FAKE_TABLE ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long _SEGMENT_ENTRY_INVALID ; 
 unsigned long _SEGMENT_ENTRY_PROTECT ; 
 int /*<<< orphan*/  FUNC1 (struct gmap*) ; 
 unsigned long* FUNC2 (struct gmap*,unsigned long,int) ; 
 struct page* FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct gmap *sg, unsigned long saddr,
			   unsigned long *pgt, int *dat_protection,
			   int *fake)
{
	unsigned long *table;
	struct page *page;
	int rc;

	FUNC0(!FUNC1(sg));
	FUNC4(&sg->guest_table_lock);
	table = FUNC2(sg, saddr, 1); /* get segment pointer */
	if (table && !(*table & _SEGMENT_ENTRY_INVALID)) {
		/* Shadow page tables are full pages (pte+pgste) */
		page = FUNC3(*table >> PAGE_SHIFT);
		*pgt = page->index & ~GMAP_SHADOW_FAKE_TABLE;
		*dat_protection = !!(*table & _SEGMENT_ENTRY_PROTECT);
		*fake = !!(page->index & GMAP_SHADOW_FAKE_TABLE);
		rc = 0;
	} else  {
		rc = -EAGAIN;
	}
	FUNC5(&sg->guest_table_lock);
	return rc;

}