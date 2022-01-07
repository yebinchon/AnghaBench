
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {struct kvm* kvm; } ;
struct kvm_nested_guest {int tlb_lock; } ;
struct kvm {int dummy; } ;


 int EINVAL ;
 int PAGE_SHIFT ;
 int ap_to_shift (int) ;
 struct kvm_nested_guest* kvmhv_get_nested (struct kvm*,int,int) ;
 int kvmhv_invalidate_shadow_pte (struct kvm_vcpu*,struct kvm_nested_guest*,unsigned long,int*) ;
 int kvmhv_put_nested (struct kvm_nested_guest*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int kvmhv_emulate_tlbie_tlb_addr(struct kvm_vcpu *vcpu, int lpid,
     int ap, long epn)
{
 struct kvm *kvm = vcpu->kvm;
 struct kvm_nested_guest *gp;
 long npages;
 int shift, shadow_shift;
 unsigned long addr;

 shift = ap_to_shift(ap);
 addr = epn << 12;
 if (shift < 0)

  return -EINVAL;

 addr &= ~((1UL << shift) - 1);
 npages = 1UL << (shift - PAGE_SHIFT);

 gp = kvmhv_get_nested(kvm, lpid, 0);
 if (!gp)
  return 0;
 mutex_lock(&gp->tlb_lock);


 do {
  kvmhv_invalidate_shadow_pte(vcpu, gp, addr, &shadow_shift);

  npages -= 1UL << (shadow_shift - PAGE_SHIFT);
  addr += 1UL << shadow_shift;
 } while (npages > 0);

 mutex_unlock(&gp->tlb_lock);
 kvmhv_put_nested(gp);
 return 0;
}
