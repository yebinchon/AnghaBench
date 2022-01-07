
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_nested_guest {int shadow_lpid; scalar_t__ shadow_pgtable; struct kvm* l1_host; } ;
struct kvm {int mm; } ;


 int kfree (struct kvm_nested_guest*) ;
 int kvmhv_set_ptbl_entry (int ,int ,int ) ;
 int kvmppc_free_lpid (int ) ;
 int kvmppc_free_pgtable_radix (struct kvm*,scalar_t__,int ) ;
 int pgd_free (int ,scalar_t__) ;

__attribute__((used)) static void kvmhv_release_nested(struct kvm_nested_guest *gp)
{
 struct kvm *kvm = gp->l1_host;

 if (gp->shadow_pgtable) {





  kvmppc_free_pgtable_radix(kvm, gp->shadow_pgtable,
       gp->shadow_lpid);
  pgd_free(kvm->mm, gp->shadow_pgtable);
 }
 kvmhv_set_ptbl_entry(gp->shadow_lpid, 0, 0);
 kvmppc_free_lpid(gp->shadow_lpid);
 kfree(gp);
}
