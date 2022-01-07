
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgprot_t ;


 int MMU_FTR_HPTE_TABLE ;
 int PAGE_KERNEL_RO ;
 int PAGE_READONLY ;
 scalar_t__ early_mmu_has_feature (int ) ;

__attribute__((used)) static pgprot_t kasan_prot_ro(void)
{
 if (early_mmu_has_feature(MMU_FTR_HPTE_TABLE))
  return PAGE_READONLY;

 return PAGE_KERNEL_RO;
}
