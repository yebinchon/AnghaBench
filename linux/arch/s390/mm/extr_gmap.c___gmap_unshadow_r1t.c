
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int lru; } ;
struct gmap {int dummy; } ;


 int BUG_ON (int) ;
 int CRST_ALLOC_ORDER ;
 int PAGE_SHIFT ;
 unsigned long _ASCE_TYPE_REGION1 ;
 int _CRST_ENTRIES ;
 unsigned long _REGION1_ENTRY_EMPTY ;
 scalar_t__ _REGION1_SIZE ;
 unsigned long _REGION_ENTRY_ORIGIN ;
 int __free_pages (struct page*,int ) ;
 int __gmap_unshadow_r2t (struct gmap*,unsigned long,unsigned long*) ;
 int __pa (unsigned long*) ;
 int gmap_idte_one (unsigned long,unsigned long) ;
 int gmap_is_shadow (struct gmap*) ;
 int list_del (int *) ;
 struct page* pfn_to_page (int) ;

__attribute__((used)) static void __gmap_unshadow_r1t(struct gmap *sg, unsigned long raddr,
    unsigned long *r1t)
{
 unsigned long asce, *r2t;
 struct page *page;
 int i;

 BUG_ON(!gmap_is_shadow(sg));
 asce = (unsigned long) r1t | _ASCE_TYPE_REGION1;
 for (i = 0; i < _CRST_ENTRIES; i++, raddr += _REGION1_SIZE) {
  if (!(r1t[i] & _REGION_ENTRY_ORIGIN))
   continue;
  r2t = (unsigned long *)(r1t[i] & _REGION_ENTRY_ORIGIN);
  __gmap_unshadow_r2t(sg, raddr, r2t);

  gmap_idte_one(asce, raddr);
  r1t[i] = _REGION1_ENTRY_EMPTY;

  page = pfn_to_page(__pa(r2t) >> PAGE_SHIFT);
  list_del(&page->lru);
  __free_pages(page, CRST_ALLOC_ORDER);
 }
}
