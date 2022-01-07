
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int pmd_t ;


 int PTRS_PER_PMD ;
 int __pmd_offset (unsigned long) ;
 scalar_t__ kvm_mips_flush_gpa_pte (int *,unsigned long,unsigned long) ;
 int pmd_clear (int *) ;
 int pmd_present (int ) ;
 int pte_free_kernel (int *,int *) ;
 int * pte_offset (int *,int ) ;

__attribute__((used)) static bool kvm_mips_flush_gpa_pmd(pmd_t *pmd, unsigned long start_gpa,
       unsigned long end_gpa)
{
 pte_t *pte;
 unsigned long end = ~0ul;
 int i_min = __pmd_offset(start_gpa);
 int i_max = __pmd_offset(end_gpa);
 bool safe_to_remove = (i_min == 0 && i_max == PTRS_PER_PMD - 1);
 int i;

 for (i = i_min; i <= i_max; ++i, start_gpa = 0) {
  if (!pmd_present(pmd[i]))
   continue;

  pte = pte_offset(pmd + i, 0);
  if (i == i_max)
   end = end_gpa;

  if (kvm_mips_flush_gpa_pte(pte, start_gpa, end)) {
   pmd_clear(pmd + i);
   pte_free_kernel(((void*)0), pte);
  } else {
   safe_to_remove = 0;
  }
 }
 return safe_to_remove;
}
