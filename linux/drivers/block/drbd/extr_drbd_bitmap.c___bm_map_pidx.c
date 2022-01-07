
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct drbd_bitmap {struct page** bm_pages; } ;


 scalar_t__ kmap_atomic (struct page*) ;

__attribute__((used)) static unsigned long *__bm_map_pidx(struct drbd_bitmap *b, unsigned int idx)
{
 struct page *page = b->bm_pages[idx];
 return (unsigned long *) kmap_atomic(page);
}
