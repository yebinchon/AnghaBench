
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 scalar_t__ hypervisor ;
 int sun4u_hugepage_shift_to_tte (int ,unsigned int) ;
 int sun4v_hugepage_shift_to_tte (int ,unsigned int) ;
 scalar_t__ tlb_type ;

__attribute__((used)) static pte_t hugepage_shift_to_tte(pte_t entry, unsigned int shift)
{
 if (tlb_type == hypervisor)
  return sun4v_hugepage_shift_to_tte(entry, shift);
 else
  return sun4u_hugepage_shift_to_tte(entry, shift);
}
