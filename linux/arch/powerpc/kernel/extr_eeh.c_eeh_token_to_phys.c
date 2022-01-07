
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int * find_init_mm_pte (unsigned long,int*) ;
 unsigned long pte_pfn (int ) ;

__attribute__((used)) static inline unsigned long eeh_token_to_phys(unsigned long token)
{
 pte_t *ptep;
 unsigned long pa;
 int hugepage_shift;






 ptep = find_init_mm_pte(token, &hugepage_shift);
 if (!ptep)
  return token;

 pa = pte_pfn(*ptep);


 if (hugepage_shift) {
  pa <<= hugepage_shift;
  pa |= token & ((1ul << hugepage_shift) - 1);
 } else {
  pa <<= PAGE_SHIFT;
  pa |= token & (PAGE_SIZE - 1);
 }

 return pa;
}
