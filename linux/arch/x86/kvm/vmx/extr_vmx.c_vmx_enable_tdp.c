
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long VMX_EPT_ACCESS_BIT ;
 unsigned long long VMX_EPT_DIRTY_BIT ;
 int VMX_EPT_EXECUTABLE_MASK ;
 unsigned long long VMX_EPT_READABLE_MASK ;
 int VMX_EPT_RWX_MASK ;
 scalar_t__ cpu_has_vmx_ept_execute_only () ;
 scalar_t__ enable_ept_ad_bits ;
 int ept_set_mmio_spte_mask () ;
 int kvm_enable_tdp () ;
 int kvm_mmu_set_mask_ptes (unsigned long long,unsigned long long,unsigned long long,unsigned long long,int ,unsigned long long,int ,unsigned long long) ;

__attribute__((used)) static void vmx_enable_tdp(void)
{
 kvm_mmu_set_mask_ptes(VMX_EPT_READABLE_MASK,
  enable_ept_ad_bits ? VMX_EPT_ACCESS_BIT : 0ull,
  enable_ept_ad_bits ? VMX_EPT_DIRTY_BIT : 0ull,
  0ull, VMX_EPT_EXECUTABLE_MASK,
  cpu_has_vmx_ept_execute_only() ? 0ull : VMX_EPT_READABLE_MASK,
  VMX_EPT_RWX_MASK, 0ull);

 ept_set_mmio_spte_mask();
 kvm_enable_tdp();
}
