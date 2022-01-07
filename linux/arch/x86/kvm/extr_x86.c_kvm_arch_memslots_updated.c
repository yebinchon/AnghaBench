
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm {int dummy; } ;


 int kvm_mmu_invalidate_mmio_sptes (struct kvm*,int ) ;

void kvm_arch_memslots_updated(struct kvm *kvm, u64 gen)
{




 kvm_mmu_invalidate_mmio_sptes(kvm, gen);
}
