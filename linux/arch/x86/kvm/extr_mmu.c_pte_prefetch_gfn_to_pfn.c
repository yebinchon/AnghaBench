
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_memory_slot {int dummy; } ;
typedef int kvm_pfn_t ;
typedef int gfn_t ;


 int KVM_PFN_ERR_FAULT ;
 struct kvm_memory_slot* gfn_to_memslot_dirty_bitmap (struct kvm_vcpu*,int ,int) ;
 int gfn_to_pfn_memslot_atomic (struct kvm_memory_slot*,int ) ;

__attribute__((used)) static kvm_pfn_t pte_prefetch_gfn_to_pfn(struct kvm_vcpu *vcpu, gfn_t gfn,
         bool no_dirty_log)
{
 struct kvm_memory_slot *slot;

 slot = gfn_to_memslot_dirty_bitmap(vcpu, gfn, no_dirty_log);
 if (!slot)
  return KVM_PFN_ERR_FAULT;

 return gfn_to_pfn_memslot_atomic(slot, gfn);
}
