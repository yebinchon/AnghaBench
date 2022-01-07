
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct pg_state {int dummy; } ;


 unsigned long HPTE_R_RPN ;
 unsigned long HPTE_R_RPN_SHIFT ;
 unsigned long HPTE_V_LARGE ;
 unsigned long PAGE_OFFSET ;
 unsigned long base_hpte_find (unsigned long,int,int,unsigned long*,unsigned long*) ;
 int decode_r (int,unsigned long,unsigned long*,int*,unsigned long*) ;
 int dump_hpte_info (struct pg_state*,unsigned long,unsigned long,unsigned long,unsigned long,int,int,unsigned long) ;
 int mmu_psize_to_shift (int) ;

__attribute__((used)) static unsigned long hpte_find(struct pg_state *st, unsigned long ea, int psize)
{
 unsigned long slot;
 u64 v = 0, r = 0;
 unsigned long rpn, lp_bits;
 int base_psize = 0, actual_psize = 0;

 if (ea < PAGE_OFFSET)
  return -1;


 slot = base_hpte_find(ea, psize, 1, &v, &r);


 if (slot == -1)
  slot = base_hpte_find(ea, psize, 0, &v, &r);


 if (slot == -1)
  return -1;







 base_psize = mmu_psize_to_shift(psize);

 if ((v & HPTE_V_LARGE) == HPTE_V_LARGE) {
  decode_r(psize, r, &rpn, &actual_psize, &lp_bits);
 } else {

  actual_psize = 12;
  rpn = (r & HPTE_R_RPN) >> HPTE_R_RPN_SHIFT;

  lp_bits = -1;
 }




 if (actual_psize == -1)
  return -1;

 dump_hpte_info(st, ea, v, r, rpn, base_psize, actual_psize, lp_bits);
 return 0;
}
