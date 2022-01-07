
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_nested_guest {int refcnt; } ;
struct TYPE_2__ {int l1_ptcr; int max_nested_lpid; struct kvm_nested_guest** nested_guests; } ;
struct kvm {int mmu_lock; TYPE_1__ arch; } ;


 int KVM_MAX_NESTED_GUESTS ;
 int PRTS_MASK ;
 struct kvm_nested_guest* kvmhv_alloc_nested (struct kvm*,int) ;
 int kvmhv_release_nested (struct kvm_nested_guest*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct kvm_nested_guest *kvmhv_get_nested(struct kvm *kvm, int l1_lpid,
       bool create)
{
 struct kvm_nested_guest *gp, *newgp;

 if (l1_lpid >= KVM_MAX_NESTED_GUESTS ||
     l1_lpid >= (1ul << ((kvm->arch.l1_ptcr & PRTS_MASK) + 12 - 4)))
  return ((void*)0);

 spin_lock(&kvm->mmu_lock);
 gp = kvm->arch.nested_guests[l1_lpid];
 if (gp)
  ++gp->refcnt;
 spin_unlock(&kvm->mmu_lock);

 if (gp || !create)
  return gp;

 newgp = kvmhv_alloc_nested(kvm, l1_lpid);
 if (!newgp)
  return ((void*)0);
 spin_lock(&kvm->mmu_lock);
 if (kvm->arch.nested_guests[l1_lpid]) {

  gp = kvm->arch.nested_guests[l1_lpid];
 } else {
  kvm->arch.nested_guests[l1_lpid] = newgp;
  ++newgp->refcnt;
  gp = newgp;
  newgp = ((void*)0);
  if (l1_lpid > kvm->arch.max_nested_lpid)
   kvm->arch.max_nested_lpid = l1_lpid;
 }
 ++gp->refcnt;
 spin_unlock(&kvm->mmu_lock);

 if (newgp)
  kvmhv_release_nested(newgp);

 return gp;
}
