
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 long ENTRYLO_D ;
 int kvm_mips_gpa_pte_to_gva_unmapped (int ) ;
 int pte_mkclean (int ) ;

__attribute__((used)) static pte_t kvm_mips_gpa_pte_to_gva_mapped(pte_t pte, long entrylo)
{

 if (!(entrylo & ENTRYLO_D))
  pte = pte_mkclean(pte);

 return kvm_mips_gpa_pte_to_gva_unmapped(pte);
}
