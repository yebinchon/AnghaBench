
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct kvmppc_pte {int rc; unsigned long raddr; } ;
struct kvm_vcpu {struct kvm* kvm; } ;
struct kvm_nested_guest {int shadow_lpid; int shadow_pgtable; } ;
struct TYPE_2__ {int lpid; int pgtable; } ;
struct kvm {int mmu_lock; TYPE_1__ arch; } ;


 unsigned long DSISR_ISSTORE ;
 long EINVAL ;
 long RESUME_HOST ;
 int _PAGE_ACCESSED ;
 int _PAGE_DIRTY ;
 long kvmppc_hv_handle_set_rc (struct kvm*,int ,int,unsigned long,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static long kvmhv_handle_nested_set_rc(struct kvm_vcpu *vcpu,
           struct kvm_nested_guest *gp,
           unsigned long n_gpa,
           struct kvmppc_pte gpte,
           unsigned long dsisr)
{
 struct kvm *kvm = vcpu->kvm;
 bool writing = !!(dsisr & DSISR_ISSTORE);
 u64 pgflags;
 long ret;


 pgflags = _PAGE_ACCESSED;
 if (writing)
  pgflags |= _PAGE_DIRTY;
 if (pgflags & ~gpte.rc)
  return RESUME_HOST;

 spin_lock(&kvm->mmu_lock);

 ret = kvmppc_hv_handle_set_rc(kvm, kvm->arch.pgtable, writing,
         gpte.raddr, kvm->arch.lpid);
 if (!ret) {
  ret = -EINVAL;
  goto out_unlock;
 }


 ret = kvmppc_hv_handle_set_rc(kvm, gp->shadow_pgtable, writing, n_gpa,
          gp->shadow_lpid);
 if (!ret)
  ret = -EINVAL;
 else
  ret = 0;

out_unlock:
 spin_unlock(&kvm->mmu_lock);
 return ret;
}
