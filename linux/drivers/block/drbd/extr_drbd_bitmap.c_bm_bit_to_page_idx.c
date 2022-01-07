
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct drbd_bitmap {unsigned int bm_number_of_pages; } ;


 int BUG_ON (int) ;
 int PAGE_SHIFT ;

__attribute__((used)) static unsigned int bm_bit_to_page_idx(struct drbd_bitmap *b, u64 bitnr)
{

 unsigned int page_nr = bitnr >> (PAGE_SHIFT + 3);
 BUG_ON(page_nr >= b->bm_number_of_pages);
 return page_nr;
}
