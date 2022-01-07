
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_nested_guest {scalar_t__ l1_gr_to_hr; int shadow_lpid; int shadow_pgtable; struct kvm* l1_host; } ;
struct kvm {int mmu_lock; } ;


 int kvmhv_flush_lpid (int ) ;
 int kvmhv_remove_nested (struct kvm_nested_guest*) ;
 int kvmhv_update_ptbl_cache (struct kvm_nested_guest*) ;
 int kvmppc_free_pgtable_radix (struct kvm*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void kvmhv_flush_nested(struct kvm_nested_guest *gp)
{
 struct kvm *kvm = gp->l1_host;

 spin_lock(&kvm->mmu_lock);
 kvmppc_free_pgtable_radix(kvm, gp->shadow_pgtable, gp->shadow_lpid);
 spin_unlock(&kvm->mmu_lock);
 kvmhv_flush_lpid(gp->shadow_lpid);
 kvmhv_update_ptbl_cache(gp);
 if (gp->l1_gr_to_hr == 0)
  kvmhv_remove_nested(gp);
}
