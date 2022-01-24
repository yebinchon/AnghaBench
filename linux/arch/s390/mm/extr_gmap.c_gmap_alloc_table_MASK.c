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
struct gmap {int /*<<< orphan*/  guest_table_lock; int /*<<< orphan*/  crst_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRST_ALLOC_ORDER ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long _REGION_ENTRY_INVALID ; 
 unsigned long _REGION_ENTRY_LENGTH ; 
 unsigned long _REGION_ENTRY_TYPE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct page*,int /*<<< orphan*/ ) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct gmap *gmap, unsigned long *table,
			    unsigned long init, unsigned long gaddr)
{
	struct page *page;
	unsigned long *new;

	/* since we dont free the gmap table until gmap_free we can unlock */
	page = FUNC1(GFP_KERNEL, CRST_ALLOC_ORDER);
	if (!page)
		return -ENOMEM;
	new = (unsigned long *) FUNC4(page);
	FUNC2(new, init);
	FUNC5(&gmap->guest_table_lock);
	if (*table & _REGION_ENTRY_INVALID) {
		FUNC3(&page->lru, &gmap->crst_list);
		*table = (unsigned long) new | _REGION_ENTRY_LENGTH |
			(*table & _REGION_ENTRY_TYPE_MASK);
		page->index = gaddr;
		page = NULL;
	}
	FUNC6(&gmap->guest_table_lock);
	if (page)
		FUNC0(page, CRST_ALLOC_ORDER);
	return 0;
}