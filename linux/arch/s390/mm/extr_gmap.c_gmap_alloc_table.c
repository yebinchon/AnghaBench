
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {unsigned long index; int lru; } ;
struct gmap {int guest_table_lock; int crst_list; } ;


 int CRST_ALLOC_ORDER ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned long _REGION_ENTRY_INVALID ;
 unsigned long _REGION_ENTRY_LENGTH ;
 unsigned long _REGION_ENTRY_TYPE_MASK ;
 int __free_pages (struct page*,int ) ;
 struct page* alloc_pages (int ,int ) ;
 int crst_table_init (unsigned long*,unsigned long) ;
 int list_add (int *,int *) ;
 scalar_t__ page_to_phys (struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int gmap_alloc_table(struct gmap *gmap, unsigned long *table,
       unsigned long init, unsigned long gaddr)
{
 struct page *page;
 unsigned long *new;


 page = alloc_pages(GFP_KERNEL, CRST_ALLOC_ORDER);
 if (!page)
  return -ENOMEM;
 new = (unsigned long *) page_to_phys(page);
 crst_table_init(new, init);
 spin_lock(&gmap->guest_table_lock);
 if (*table & _REGION_ENTRY_INVALID) {
  list_add(&page->lru, &gmap->crst_list);
  *table = (unsigned long) new | _REGION_ENTRY_LENGTH |
   (*table & _REGION_ENTRY_TYPE_MASK);
  page->index = gaddr;
  page = ((void*)0);
 }
 spin_unlock(&gmap->guest_table_lock);
 if (page)
  __free_pages(page, CRST_ALLOC_ORDER);
 return 0;
}
