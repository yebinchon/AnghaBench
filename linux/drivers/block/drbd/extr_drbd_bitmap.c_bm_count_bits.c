
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_bitmap {unsigned long bm_bits; int bm_number_of_pages; } ;


 int BITS_PER_LONG ;
 unsigned long BITS_PER_LONG_MASK ;
 int BITS_PER_PAGE ;
 int BITS_PER_PAGE_MASK ;
 int LN2_BPL ;
 unsigned long* __bm_map_pidx (struct drbd_bitmap*,int) ;
 int __bm_unmap (unsigned long*) ;
 scalar_t__ bitmap_weight (unsigned long*,int) ;
 int cond_resched () ;
 unsigned long cpu_to_lel (unsigned long) ;
 scalar_t__ hweight_long (unsigned long) ;

__attribute__((used)) static unsigned long bm_count_bits(struct drbd_bitmap *b)
{
 unsigned long *p_addr;
 unsigned long bits = 0;
 unsigned long mask = (1UL << (b->bm_bits & BITS_PER_LONG_MASK)) -1;
 int idx, last_word;


 for (idx = 0; idx < b->bm_number_of_pages - 1; idx++) {
  p_addr = __bm_map_pidx(b, idx);
  bits += bitmap_weight(p_addr, BITS_PER_PAGE);
  __bm_unmap(p_addr);
  cond_resched();
 }

 last_word = ((b->bm_bits - 1) & BITS_PER_PAGE_MASK) >> LN2_BPL;
 p_addr = __bm_map_pidx(b, idx);
 bits += bitmap_weight(p_addr, last_word * BITS_PER_LONG);
 p_addr[last_word] &= cpu_to_lel(mask);
 bits += hweight_long(p_addr[last_word]);

 if (BITS_PER_LONG == 32 && (last_word & 1) == 0)
  p_addr[last_word+1] = 0;
 __bm_unmap(p_addr);
 return bits;
}
