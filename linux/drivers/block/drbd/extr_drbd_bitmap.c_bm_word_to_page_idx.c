
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_bitmap {unsigned int bm_number_of_pages; } ;


 int BUG_ON (int) ;
 int LN2_BPL ;
 int PAGE_SHIFT ;

__attribute__((used)) static unsigned int bm_word_to_page_idx(struct drbd_bitmap *b, unsigned long long_nr)
{

 unsigned int page_nr = long_nr >> (PAGE_SHIFT - LN2_BPL + 3);
 BUG_ON(page_nr >= b->bm_number_of_pages);
 return page_nr;
}
