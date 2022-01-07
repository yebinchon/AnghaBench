
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_memory_slot {int dummy; } ;
typedef int gfn_t ;


 int __mmu_gfn_lpage_is_disallowed (int ,int,struct kvm_memory_slot*) ;
 struct kvm_memory_slot* kvm_vcpu_gfn_to_memslot (struct kvm_vcpu*,int ) ;

__attribute__((used)) static bool mmu_gfn_lpage_is_disallowed(struct kvm_vcpu *vcpu, gfn_t gfn,
     int level)
{
 struct kvm_memory_slot *slot;

 slot = kvm_vcpu_gfn_to_memslot(vcpu, gfn);
 return __mmu_gfn_lpage_is_disallowed(gfn, level, slot);
}
