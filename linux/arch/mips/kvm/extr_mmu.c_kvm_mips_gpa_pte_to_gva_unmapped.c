
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int pte_dirty (int ) ;
 int pte_wrprotect (int ) ;

__attribute__((used)) static pte_t kvm_mips_gpa_pte_to_gva_unmapped(pte_t pte)
{





 if (!pte_dirty(pte))
  pte = pte_wrprotect(pte);

 return pte;
}
