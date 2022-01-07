
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {unsigned long index; int lru; } ;
struct gmap {int edat_level; int guest_table_lock; int crst_list; } ;


 int BUG_ON (int) ;
 int CRST_ALLOC_ORDER ;
 int EAGAIN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned long GMAP_SHADOW_FAKE_TABLE ;
 unsigned long PAGE_SIZE ;
 unsigned long _REGION3_ENTRY_LARGE ;
 unsigned long _REGION3_MASK ;
 unsigned long _REGION_ENTRY_INVALID ;
 unsigned long _REGION_ENTRY_LENGTH ;
 unsigned long _REGION_ENTRY_OFFSET ;
 unsigned long _REGION_ENTRY_ORIGIN ;
 unsigned long _REGION_ENTRY_PROTECT ;
 unsigned long _REGION_ENTRY_TYPE_R3 ;
 int _SEGMENT_ENTRY_EMPTY ;
 unsigned long _SHADOW_RMAP_REGION3 ;
 int __free_pages (struct page*,int ) ;
 struct page* alloc_pages (int ,int ) ;
 int crst_table_init (unsigned long*,int ) ;
 int gmap_is_shadow (struct gmap*) ;
 int gmap_protect_rmap (struct gmap*,unsigned long,unsigned long,unsigned long) ;
 unsigned long* gmap_table_walk (struct gmap*,unsigned long,int) ;
 int gmap_unshadow_sgt (struct gmap*,unsigned long) ;
 int list_add (int *,int *) ;
 scalar_t__ page_to_phys (struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int gmap_shadow_sgt(struct gmap *sg, unsigned long saddr, unsigned long sgt,
      int fake)
{
 unsigned long raddr, origin, offset, len;
 unsigned long *s_sgt, *table;
 struct page *page;
 int rc;

 BUG_ON(!gmap_is_shadow(sg) || (sgt & _REGION3_ENTRY_LARGE));

 page = alloc_pages(GFP_KERNEL, CRST_ALLOC_ORDER);
 if (!page)
  return -ENOMEM;
 page->index = sgt & _REGION_ENTRY_ORIGIN;
 if (fake)
  page->index |= GMAP_SHADOW_FAKE_TABLE;
 s_sgt = (unsigned long *) page_to_phys(page);

 spin_lock(&sg->guest_table_lock);
 table = gmap_table_walk(sg, saddr, 2);
 if (!table) {
  rc = -EAGAIN;
  goto out_free;
 }
 if (!(*table & _REGION_ENTRY_INVALID)) {
  rc = 0;
  goto out_free;
 } else if (*table & _REGION_ENTRY_ORIGIN) {
  rc = -EAGAIN;
  goto out_free;
 }
 crst_table_init(s_sgt, _SEGMENT_ENTRY_EMPTY);

 *table = (unsigned long) s_sgt | _REGION_ENTRY_LENGTH |
   _REGION_ENTRY_TYPE_R3 | _REGION_ENTRY_INVALID;
 if (sg->edat_level >= 1)
  *table |= sgt & _REGION_ENTRY_PROTECT;
 list_add(&page->lru, &sg->crst_list);
 if (fake) {

  *table &= ~_REGION_ENTRY_INVALID;
  spin_unlock(&sg->guest_table_lock);
  return 0;
 }
 spin_unlock(&sg->guest_table_lock);

 raddr = (saddr & _REGION3_MASK) | _SHADOW_RMAP_REGION3;
 origin = sgt & _REGION_ENTRY_ORIGIN;
 offset = ((sgt & _REGION_ENTRY_OFFSET) >> 6) * PAGE_SIZE;
 len = ((sgt & _REGION_ENTRY_LENGTH) + 1) * PAGE_SIZE - offset;
 rc = gmap_protect_rmap(sg, raddr, origin + offset, len);
 spin_lock(&sg->guest_table_lock);
 if (!rc) {
  table = gmap_table_walk(sg, saddr, 2);
  if (!table || (*table & _REGION_ENTRY_ORIGIN) !=
         (unsigned long) s_sgt)
   rc = -EAGAIN;
  else
   *table &= ~_REGION_ENTRY_INVALID;
 } else {
  gmap_unshadow_sgt(sg, raddr);
 }
 spin_unlock(&sg->guest_table_lock);
 return rc;
out_free:
 spin_unlock(&sg->guest_table_lock);
 __free_pages(page, CRST_ALLOC_ORDER);
 return rc;
}
