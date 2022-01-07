
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {struct kvm* kvm; } ;
struct kvm_nested_guest {int shadow_lpid; int shadow_pgtable; } ;
struct kvm {int mmu_lock; } ;
typedef int pte_t ;


 int PAGE_SHIFT ;
 int * __find_linux_pte (int ,long,int *,int*) ;
 int kvmppc_unmap_pte (struct kvm*,int *,long,int,int *,int ) ;
 scalar_t__ pte_present (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool kvmhv_invalidate_shadow_pte(struct kvm_vcpu *vcpu,
     struct kvm_nested_guest *gp,
     long gpa, int *shift_ret)
{
 struct kvm *kvm = vcpu->kvm;
 bool ret = 0;
 pte_t *ptep;
 int shift;

 spin_lock(&kvm->mmu_lock);
 ptep = __find_linux_pte(gp->shadow_pgtable, gpa, ((void*)0), &shift);
 if (!shift)
  shift = PAGE_SHIFT;
 if (ptep && pte_present(*ptep)) {
  kvmppc_unmap_pte(kvm, ptep, gpa, shift, ((void*)0), gp->shadow_lpid);
  ret = 1;
 }
 spin_unlock(&kvm->mmu_lock);

 if (shift_ret)
  *shift_ret = shift;
 return ret;
}
