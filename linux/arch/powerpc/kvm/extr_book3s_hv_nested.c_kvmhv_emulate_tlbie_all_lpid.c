
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {struct kvm* kvm; } ;
struct kvm_nested_guest {int dummy; } ;
struct TYPE_2__ {int max_nested_lpid; struct kvm_nested_guest** nested_guests; } ;
struct kvm {int mmu_lock; TYPE_1__ arch; } ;


 int kvmhv_emulate_tlbie_lpid (struct kvm_vcpu*,struct kvm_nested_guest*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void kvmhv_emulate_tlbie_all_lpid(struct kvm_vcpu *vcpu, int ric)
{
 struct kvm *kvm = vcpu->kvm;
 struct kvm_nested_guest *gp;
 int i;

 spin_lock(&kvm->mmu_lock);
 for (i = 0; i <= kvm->arch.max_nested_lpid; i++) {
  gp = kvm->arch.nested_guests[i];
  if (gp) {
   spin_unlock(&kvm->mmu_lock);
   kvmhv_emulate_tlbie_lpid(vcpu, gp, ric);
   spin_lock(&kvm->mmu_lock);
  }
 }
 spin_unlock(&kvm->mmu_lock);
}
