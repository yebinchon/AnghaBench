
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_bitmap {int bm_bits; scalar_t__ bm_number_of_pages; } ;


 int BITS_PER_LONG ;
 int BITS_PER_LONG_MASK ;
 int BITS_PER_PAGE_MASK ;
 unsigned long* bm_map_pidx (struct drbd_bitmap*,scalar_t__) ;
 int bm_unmap (unsigned long*) ;
 unsigned long cpu_to_lel (unsigned long) ;
 int hweight_long (unsigned long) ;

__attribute__((used)) static int bm_clear_surplus(struct drbd_bitmap *b)
{
 unsigned long mask;
 unsigned long *p_addr, *bm;
 int tmp;
 int cleared = 0;


 tmp = (b->bm_bits & BITS_PER_PAGE_MASK);

 mask = (1UL << (tmp & BITS_PER_LONG_MASK)) -1;


 mask = cpu_to_lel(mask);

 p_addr = bm_map_pidx(b, b->bm_number_of_pages - 1);
 bm = p_addr + (tmp/BITS_PER_LONG);
 if (mask) {




  cleared = hweight_long(*bm & ~mask);
  *bm &= mask;
  bm++;
 }

 if (BITS_PER_LONG == 32 && ((bm - p_addr) & 1) == 1) {


  cleared += hweight_long(*bm);
  *bm = 0;
 }
 bm_unmap(p_addr);
 return cleared;
}
