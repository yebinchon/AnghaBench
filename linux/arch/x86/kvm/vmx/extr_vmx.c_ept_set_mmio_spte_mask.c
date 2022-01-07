
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VMX_EPT_MISCONFIG_WX_VALUE ;
 int VMX_EPT_RWX_MASK ;
 int kvm_mmu_set_mmio_spte_mask (int ,int ,int ) ;

__attribute__((used)) static void ept_set_mmio_spte_mask(void)
{




 kvm_mmu_set_mmio_spte_mask(VMX_EPT_RWX_MASK,
       VMX_EPT_MISCONFIG_WX_VALUE, 0);
}
