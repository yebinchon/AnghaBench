
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int kvm; } ;
struct kvm_memory_slot {int dummy; } ;


 int kvm_mmu_slot_gfn_write_protect (int ,struct kvm_memory_slot*,int ) ;
 struct kvm_memory_slot* kvm_vcpu_gfn_to_memslot (struct kvm_vcpu*,int ) ;

__attribute__((used)) static bool rmap_write_protect(struct kvm_vcpu *vcpu, u64 gfn)
{
 struct kvm_memory_slot *slot;

 slot = kvm_vcpu_gfn_to_memslot(vcpu, gfn);
 return kvm_mmu_slot_gfn_write_protect(vcpu->kvm, slot, gfn);
}
