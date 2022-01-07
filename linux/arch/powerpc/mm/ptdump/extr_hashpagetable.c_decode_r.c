
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_psize_def {int* penc; unsigned long shift; } ;


 unsigned long HPTE_R_RPN ;
 unsigned long HPTE_R_RPN_SHIFT ;
 int MMU_PAGE_COUNT ;
 struct mmu_psize_def* mmu_psize_defs ;
 int mmu_psize_to_shift (int) ;

__attribute__((used)) static void decode_r(int bps, unsigned long r, unsigned long *rpn, int *aps,
  unsigned long *lp_bits)
{
 struct mmu_psize_def entry;
 unsigned long arpn, mask, lp;
 int penc = -2, idx = 0, shift;
 arpn = (r & HPTE_R_RPN) >> HPTE_R_RPN_SHIFT;
 lp = arpn & 0xff;

 entry = mmu_psize_defs[bps];
 while (idx < MMU_PAGE_COUNT) {
  penc = entry.penc[idx];
  if ((penc != -1) && (mmu_psize_defs[idx].shift)) {
   shift = mmu_psize_defs[idx].shift - HPTE_R_RPN_SHIFT;
   mask = (0x1 << (shift)) - 1;
   if ((lp & mask) == penc) {
    *aps = mmu_psize_to_shift(idx);
    *lp_bits = lp & mask;
    *rpn = arpn >> shift;
    return;
   }
  }
  idx++;
 }
}
