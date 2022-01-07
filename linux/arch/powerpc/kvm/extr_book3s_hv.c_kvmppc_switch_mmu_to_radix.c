
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int radix; int hpt; } ;
struct kvm {TYPE_1__ arch; int mmu_lock; } ;


 int LPCR_GTSE ;
 int LPCR_HR ;
 int LPCR_UPRT ;
 int LPCR_VPM1 ;
 int kvmppc_free_hpt (int *) ;
 int kvmppc_init_vm_radix (struct kvm*) ;
 int kvmppc_rmap_reset (struct kvm*) ;
 int kvmppc_update_lpcr (struct kvm*,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int kvmppc_switch_mmu_to_radix(struct kvm *kvm)
{
 int err;

 err = kvmppc_init_vm_radix(kvm);
 if (err)
  return err;
 kvmppc_rmap_reset(kvm);

 spin_lock(&kvm->mmu_lock);
 kvm->arch.radix = 1;
 spin_unlock(&kvm->mmu_lock);
 kvmppc_free_hpt(&kvm->arch.hpt);
 kvmppc_update_lpcr(kvm, LPCR_UPRT | LPCR_GTSE | LPCR_HR,
      LPCR_VPM1 | LPCR_UPRT | LPCR_GTSE | LPCR_HR);
 return 0;
}
