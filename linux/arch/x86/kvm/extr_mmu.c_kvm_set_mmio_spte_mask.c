
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;


 int ACC_USER_MASK ;
 int ACC_WRITE_MASK ;
 int CONFIG_X86_64 ;
 scalar_t__ IS_ENABLED (int ) ;
 int kvm_mmu_set_mmio_spte_mask (unsigned long long,unsigned long long,int) ;
 int shadow_phys_bits ;

__attribute__((used)) static void kvm_set_mmio_spte_mask(void)
{
 u64 mask;
 mask = 1ull << 51;


 mask |= 1ull;





 if (IS_ENABLED(CONFIG_X86_64) && shadow_phys_bits == 52)
  mask &= ~1ull;

 kvm_mmu_set_mmio_spte_mask(mask, mask, ACC_WRITE_MASK | ACC_USER_MASK);
}
