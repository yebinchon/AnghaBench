
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {unsigned long index; int lru; } ;
struct gmap {int guest_table_lock; int pt_list; int mm; } ;


 int BUG_ON (int) ;
 int EAGAIN ;
 int ENOMEM ;
 unsigned long GMAP_SHADOW_FAKE_TABLE ;
 unsigned long PAGE_MASK ;
 int PAGE_SIZE ;
 unsigned long _SEGMENT_ENTRY ;
 unsigned long _SEGMENT_ENTRY_INVALID ;
 unsigned long _SEGMENT_ENTRY_LARGE ;
 unsigned long _SEGMENT_ENTRY_ORIGIN ;
 unsigned long _SEGMENT_ENTRY_PROTECT ;
 unsigned long _SEGMENT_MASK ;
 unsigned long _SHADOW_RMAP_SEGMENT ;
 int gmap_is_shadow (struct gmap*) ;
 int gmap_protect_rmap (struct gmap*,unsigned long,unsigned long,int ) ;
 unsigned long* gmap_table_walk (struct gmap*,unsigned long,int) ;
 int gmap_unshadow_pgt (struct gmap*,unsigned long) ;
 int list_add (int *,int *) ;
 struct page* page_table_alloc_pgste (int ) ;
 int page_table_free_pgste (struct page*) ;
 scalar_t__ page_to_phys (struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int gmap_shadow_pgt(struct gmap *sg, unsigned long saddr, unsigned long pgt,
      int fake)
{
 unsigned long raddr, origin;
 unsigned long *s_pgt, *table;
 struct page *page;
 int rc;

 BUG_ON(!gmap_is_shadow(sg) || (pgt & _SEGMENT_ENTRY_LARGE));

 page = page_table_alloc_pgste(sg->mm);
 if (!page)
  return -ENOMEM;
 page->index = pgt & _SEGMENT_ENTRY_ORIGIN;
 if (fake)
  page->index |= GMAP_SHADOW_FAKE_TABLE;
 s_pgt = (unsigned long *) page_to_phys(page);

 spin_lock(&sg->guest_table_lock);
 table = gmap_table_walk(sg, saddr, 1);
 if (!table) {
  rc = -EAGAIN;
  goto out_free;
 }
 if (!(*table & _SEGMENT_ENTRY_INVALID)) {
  rc = 0;
  goto out_free;
 } else if (*table & _SEGMENT_ENTRY_ORIGIN) {
  rc = -EAGAIN;
  goto out_free;
 }

 *table = (unsigned long) s_pgt | _SEGMENT_ENTRY |
   (pgt & _SEGMENT_ENTRY_PROTECT) | _SEGMENT_ENTRY_INVALID;
 list_add(&page->lru, &sg->pt_list);
 if (fake) {

  *table &= ~_SEGMENT_ENTRY_INVALID;
  spin_unlock(&sg->guest_table_lock);
  return 0;
 }
 spin_unlock(&sg->guest_table_lock);

 raddr = (saddr & _SEGMENT_MASK) | _SHADOW_RMAP_SEGMENT;
 origin = pgt & _SEGMENT_ENTRY_ORIGIN & PAGE_MASK;
 rc = gmap_protect_rmap(sg, raddr, origin, PAGE_SIZE);
 spin_lock(&sg->guest_table_lock);
 if (!rc) {
  table = gmap_table_walk(sg, saddr, 1);
  if (!table || (*table & _SEGMENT_ENTRY_ORIGIN) !=
         (unsigned long) s_pgt)
   rc = -EAGAIN;
  else
   *table &= ~_SEGMENT_ENTRY_INVALID;
 } else {
  gmap_unshadow_pgt(sg, raddr);
 }
 spin_unlock(&sg->guest_table_lock);
 return rc;
out_free:
 spin_unlock(&sg->guest_table_lock);
 page_table_free_pgste(page);
 return rc;

}
