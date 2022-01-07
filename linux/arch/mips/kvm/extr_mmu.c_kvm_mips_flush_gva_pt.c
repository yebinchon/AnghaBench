
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgd_t ;
typedef enum kvm_mips_flush { ____Placeholder_kvm_mips_flush } kvm_mips_flush ;


 int KMF_GPA ;
 int KMF_KERN ;
 int kvm_mips_flush_gva_pgd (int *,int,int) ;

void kvm_mips_flush_gva_pt(pgd_t *pgd, enum kvm_mips_flush flags)
{
 if (flags & KMF_GPA) {

  if (flags & KMF_KERN)

   kvm_mips_flush_gva_pgd(pgd, 0, 0x7fffffff);
  else

   kvm_mips_flush_gva_pgd(pgd, 0, 0x3fffffff);
 } else {

  kvm_mips_flush_gva_pgd(pgd, 0, 0x3fffffff);


  if (flags & KMF_KERN)
   kvm_mips_flush_gva_pgd(pgd, 0x60000000, 0x7fffffff);
 }
}
