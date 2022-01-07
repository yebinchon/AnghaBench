
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_nested_guest {long refcnt; struct kvm* l1_host; } ;
struct kvm {int mmu_lock; } ;


 int kvmhv_release_nested (struct kvm_nested_guest*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void kvmhv_put_nested(struct kvm_nested_guest *gp)
{
 struct kvm *kvm = gp->l1_host;
 long ref;

 spin_lock(&kvm->mmu_lock);
 ref = --gp->refcnt;
 spin_unlock(&kvm->mmu_lock);
 if (ref == 0)
  kvmhv_release_nested(gp);
}
