
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {struct kvm* kvm; } ;
struct kvm_nested_guest {int tlb_lock; int shadow_lpid; int shadow_pgtable; } ;
struct kvm {int mmu_lock; } ;


 int kvmhv_flush_lpid (int ) ;
 int kvmhv_flush_nested (struct kvm_nested_guest*) ;
 int kvmppc_free_pgtable_radix (struct kvm*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void kvmhv_emulate_tlbie_lpid(struct kvm_vcpu *vcpu,
         struct kvm_nested_guest *gp, int ric)
{
 struct kvm *kvm = vcpu->kvm;

 mutex_lock(&gp->tlb_lock);
 switch (ric) {
 case 0:

  spin_lock(&kvm->mmu_lock);
  kvmppc_free_pgtable_radix(kvm, gp->shadow_pgtable,
       gp->shadow_lpid);
  kvmhv_flush_lpid(gp->shadow_lpid);
  spin_unlock(&kvm->mmu_lock);
  break;
 case 1:




  break;
 case 2:

  kvmhv_flush_nested(gp);
  break;
 default:
  break;
 }
 mutex_unlock(&gp->tlb_lock);
}
