
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int mmio_gva; unsigned int mmio_access; int mmio_gen; int mmio_gfn; } ;
struct kvm_vcpu {TYPE_1__ arch; int kvm; } ;
typedef int gva_t ;
typedef int gfn_t ;
struct TYPE_4__ {int generation; } ;


 int KVM_MEMSLOT_GEN_UPDATE_IN_PROGRESS ;
 int PAGE_MASK ;
 TYPE_2__* kvm_memslots (int ) ;
 scalar_t__ mmu_is_nested (struct kvm_vcpu*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void vcpu_cache_mmio_info(struct kvm_vcpu *vcpu,
     gva_t gva, gfn_t gfn, unsigned access)
{
 u64 gen = kvm_memslots(vcpu->kvm)->generation;

 if (unlikely(gen & KVM_MEMSLOT_GEN_UPDATE_IN_PROGRESS))
  return;





 vcpu->arch.mmio_gva = mmu_is_nested(vcpu) ? 0 : gva & PAGE_MASK;
 vcpu->arch.mmio_access = access;
 vcpu->arch.mmio_gfn = gfn;
 vcpu->arch.mmio_gen = gen;
}
