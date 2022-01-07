
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int lru; } ;
struct gmap {int dummy; } ;


 int BUG_ON (int) ;
 int PAGE_SHIFT ;
 int _CRST_ENTRIES ;
 unsigned long _REGION_ENTRY_ORIGIN ;
 unsigned long _SEGMENT_ENTRY_EMPTY ;
 unsigned long _SEGMENT_ENTRY_ORIGIN ;
 scalar_t__ _SEGMENT_SIZE ;
 int __gmap_unshadow_pgt (struct gmap*,unsigned long,unsigned long*) ;
 int __pa (unsigned long*) ;
 int gmap_is_shadow (struct gmap*) ;
 int list_del (int *) ;
 int page_table_free_pgste (struct page*) ;
 struct page* pfn_to_page (int) ;

__attribute__((used)) static void __gmap_unshadow_sgt(struct gmap *sg, unsigned long raddr,
    unsigned long *sgt)
{
 unsigned long *pgt;
 struct page *page;
 int i;

 BUG_ON(!gmap_is_shadow(sg));
 for (i = 0; i < _CRST_ENTRIES; i++, raddr += _SEGMENT_SIZE) {
  if (!(sgt[i] & _SEGMENT_ENTRY_ORIGIN))
   continue;
  pgt = (unsigned long *)(sgt[i] & _REGION_ENTRY_ORIGIN);
  sgt[i] = _SEGMENT_ENTRY_EMPTY;
  __gmap_unshadow_pgt(sg, raddr, pgt);

  page = pfn_to_page(__pa(pgt) >> PAGE_SHIFT);
  list_del(&page->lru);
  page_table_free_pgste(page);
 }
}
