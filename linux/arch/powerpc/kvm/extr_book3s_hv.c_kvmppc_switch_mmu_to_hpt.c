
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ radix; scalar_t__ process_table; } ;
struct kvm {int mmu_lock; TYPE_1__ arch; } ;


 int LPCR_GTSE ;
 int LPCR_HR ;
 int LPCR_UPRT ;
 int LPCR_VPM1 ;
 int kvmhv_release_all_nested (struct kvm*) ;
 int kvmppc_free_radix (struct kvm*) ;
 int kvmppc_rmap_reset (struct kvm*) ;
 int kvmppc_update_lpcr (struct kvm*,int,int) ;
 scalar_t__ nesting_enabled (struct kvm*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int kvmppc_switch_mmu_to_hpt(struct kvm *kvm)
{
 if (nesting_enabled(kvm))
  kvmhv_release_all_nested(kvm);
 kvmppc_rmap_reset(kvm);
 kvm->arch.process_table = 0;

 spin_lock(&kvm->mmu_lock);
 kvm->arch.radix = 0;
 spin_unlock(&kvm->mmu_lock);
 kvmppc_free_radix(kvm);
 kvmppc_update_lpcr(kvm, LPCR_VPM1,
      LPCR_VPM1 | LPCR_UPRT | LPCR_GTSE | LPCR_HR);
 return 0;
}
