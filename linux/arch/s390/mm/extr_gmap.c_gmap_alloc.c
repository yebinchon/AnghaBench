
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int lru; scalar_t__ index; } ;
struct gmap {unsigned long* table; unsigned long asce; unsigned long asce_end; int crst_list; int ref_count; int shadow_lock; int guest_table_lock; int host_to_rmap; int host_to_guest; int guest_to_host; int pt_list; int children; } ;


 int CRST_ALLOC_ORDER ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_RADIX_TREE (int *,int ) ;
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
 unsigned long __pa (unsigned long*) ;
 struct page* alloc_pages (int ,int ) ;
 int crst_table_init (unsigned long*,unsigned long) ;
 int kfree (struct gmap*) ;
 struct gmap* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 scalar_t__ page_to_phys (struct page*) ;
 int refcount_set (int *,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct gmap *gmap_alloc(unsigned long limit)
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
 gmap = kzalloc(sizeof(struct gmap), GFP_KERNEL);
 if (!gmap)
  goto out;
 INIT_LIST_HEAD(&gmap->crst_list);
 INIT_LIST_HEAD(&gmap->children);
 INIT_LIST_HEAD(&gmap->pt_list);
 INIT_RADIX_TREE(&gmap->guest_to_host, GFP_KERNEL);
 INIT_RADIX_TREE(&gmap->host_to_guest, GFP_ATOMIC);
 INIT_RADIX_TREE(&gmap->host_to_rmap, GFP_ATOMIC);
 spin_lock_init(&gmap->guest_table_lock);
 spin_lock_init(&gmap->shadow_lock);
 refcount_set(&gmap->ref_count, 1);
 page = alloc_pages(GFP_KERNEL, CRST_ALLOC_ORDER);
 if (!page)
  goto out_free;
 page->index = 0;
 list_add(&page->lru, &gmap->crst_list);
 table = (unsigned long *) page_to_phys(page);
 crst_table_init(table, etype);
 gmap->table = table;
 gmap->asce = atype | _ASCE_TABLE_LENGTH |
  _ASCE_USER_BITS | __pa(table);
 gmap->asce_end = limit;
 return gmap;

out_free:
 kfree(gmap);
out:
 return ((void*)0);
}
