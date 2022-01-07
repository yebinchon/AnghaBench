
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int PTRS_PER_PTE ;
 int __pte (int ) ;
 int __pte_offset (unsigned long) ;
 int pte_present (int ) ;
 int set_pte (int *,int ) ;

__attribute__((used)) static bool kvm_mips_flush_gpa_pte(pte_t *pte, unsigned long start_gpa,
       unsigned long end_gpa)
{
 int i_min = __pte_offset(start_gpa);
 int i_max = __pte_offset(end_gpa);
 bool safe_to_remove = (i_min == 0 && i_max == PTRS_PER_PTE - 1);
 int i;

 for (i = i_min; i <= i_max; ++i) {
  if (!pte_present(pte[i]))
   continue;

  set_pte(pte + i, __pte(0));
 }
 return safe_to_remove;
}
