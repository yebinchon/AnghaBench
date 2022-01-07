
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {unsigned long index; } ;
struct gmap {int guest_table_lock; } ;


 int BUG_ON (int) ;
 int EAGAIN ;
 unsigned long GMAP_SHADOW_FAKE_TABLE ;
 unsigned long PAGE_SHIFT ;
 unsigned long _SEGMENT_ENTRY_INVALID ;
 unsigned long _SEGMENT_ENTRY_PROTECT ;
 int gmap_is_shadow (struct gmap*) ;
 unsigned long* gmap_table_walk (struct gmap*,unsigned long,int) ;
 struct page* pfn_to_page (unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int gmap_shadow_pgt_lookup(struct gmap *sg, unsigned long saddr,
      unsigned long *pgt, int *dat_protection,
      int *fake)
{
 unsigned long *table;
 struct page *page;
 int rc;

 BUG_ON(!gmap_is_shadow(sg));
 spin_lock(&sg->guest_table_lock);
 table = gmap_table_walk(sg, saddr, 1);
 if (table && !(*table & _SEGMENT_ENTRY_INVALID)) {

  page = pfn_to_page(*table >> PAGE_SHIFT);
  *pgt = page->index & ~GMAP_SHADOW_FAKE_TABLE;
  *dat_protection = !!(*table & _SEGMENT_ENTRY_PROTECT);
  *fake = !!(page->index & GMAP_SHADOW_FAKE_TABLE);
  rc = 0;
 } else {
  rc = -EAGAIN;
 }
 spin_unlock(&sg->guest_table_lock);
 return rc;

}
