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
struct page {int /*<<< orphan*/  lru; scalar_t__ index; } ;
struct gmap {unsigned long* table; unsigned long asce; unsigned long asce_end; int /*<<< orphan*/  crst_list; int /*<<< orphan*/  ref_count; int /*<<< orphan*/  shadow_lock; int /*<<< orphan*/  guest_table_lock; int /*<<< orphan*/  host_to_rmap; int /*<<< orphan*/  host_to_guest; int /*<<< orphan*/  guest_to_host; int /*<<< orphan*/  pt_list; int /*<<< orphan*/  children; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRST_ALLOC_ORDER ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long _ASCE_TABLE_LENGTH ; 
 unsigned long _ASCE_TYPE_REGION1 ; 
 unsigned long _ASCE_TYPE_REGION2 ; 
 unsigned long _ASCE_TYPE_REGION3 ; 
 unsigned long _ASCE_TYPE_SEGMENT ; 
 unsigned long _ASCE_USER_BITS ; 
 unsigned long _REGION1_ENTRY_EMPTY ; 
 unsigned long _REGION1_SIZE ; 
 unsigned long _REGION2_ENTRY_EMPTY ; 
 unsigned long _REGION2_SIZE ; 
 unsigned long _REGION3_ENTRY_EMPTY ; 
 unsigned long _REGION3_SIZE ; 
 unsigned long _SEGMENT_ENTRY_EMPTY ; 
 unsigned long FUNC2 (unsigned long*) ; 
 struct page* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct gmap*) ; 
 struct gmap* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct gmap *FUNC11(unsigned long limit)
{
	struct gmap *gmap;
	struct page *page;
	unsigned long *table;
	unsigned long etype, atype;

	if (limit < _REGION3_SIZE) {
		limit = _REGION3_SIZE - 1;
		atype = _ASCE_TYPE_SEGMENT;
		etype = _SEGMENT_ENTRY_EMPTY;
	} else if (limit < _REGION2_SIZE) {
		limit = _REGION2_SIZE - 1;
		atype = _ASCE_TYPE_REGION3;
		etype = _REGION3_ENTRY_EMPTY;
	} else if (limit < _REGION1_SIZE) {
		limit = _REGION1_SIZE - 1;
		atype = _ASCE_TYPE_REGION2;
		etype = _REGION2_ENTRY_EMPTY;
	} else {
		limit = -1UL;
		atype = _ASCE_TYPE_REGION1;
		etype = _REGION1_ENTRY_EMPTY;
	}
	gmap = FUNC6(sizeof(struct gmap), GFP_KERNEL);
	if (!gmap)
		goto out;
	FUNC0(&gmap->crst_list);
	FUNC0(&gmap->children);
	FUNC0(&gmap->pt_list);
	FUNC1(&gmap->guest_to_host, GFP_KERNEL);
	FUNC1(&gmap->host_to_guest, GFP_ATOMIC);
	FUNC1(&gmap->host_to_rmap, GFP_ATOMIC);
	FUNC10(&gmap->guest_table_lock);
	FUNC10(&gmap->shadow_lock);
	FUNC9(&gmap->ref_count, 1);
	page = FUNC3(GFP_KERNEL, CRST_ALLOC_ORDER);
	if (!page)
		goto out_free;
	page->index = 0;
	FUNC7(&page->lru, &gmap->crst_list);
	table = (unsigned long *) FUNC8(page);
	FUNC4(table, etype);
	gmap->table = table;
	gmap->asce = atype | _ASCE_TABLE_LENGTH |
		_ASCE_USER_BITS | FUNC2(table);
	gmap->asce_end = limit;
	return gmap;

out_free:
	FUNC5(gmap);
out:
	return NULL;
}