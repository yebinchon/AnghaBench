
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm {int dummy; } ;


 scalar_t__ KVM_ADDRESS_SPACE_NUM ;
 int KVM_MEMSLOT_GEN_UPDATE_IN_PROGRESS ;
 int MMIO_SPTE_GEN_MASK ;
 int WARN_ON (int) ;
 int kvm_debug_ratelimited (char*) ;
 int kvm_mmu_zap_all_fast (struct kvm*) ;
 scalar_t__ unlikely (int) ;

void kvm_mmu_invalidate_mmio_sptes(struct kvm *kvm, u64 gen)
{
 WARN_ON(gen & KVM_MEMSLOT_GEN_UPDATE_IN_PROGRESS);

 gen &= MMIO_SPTE_GEN_MASK;
 gen &= ~((u64)KVM_ADDRESS_SPACE_NUM - 1);





 if (unlikely(gen == 0)) {
  kvm_debug_ratelimited("kvm: zapping shadow pages for mmio generation wraparound\n");
  kvm_mmu_zap_all_fast(kvm);
 }
}
