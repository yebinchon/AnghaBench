
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_ppc_mmuv3_cfg {int flags; int process_table; } ;
struct TYPE_2__ {int mmu_ready; int process_table; int mmu_setup_lock; int vcpus_running; } ;
struct kvm {TYPE_1__ arch; } ;


 int CPU_FTR_ARCH_300 ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int KVM_PPC_MMUV3_GTSE ;
 int KVM_PPC_MMUV3_RADIX ;
 unsigned long LPCR_GTSE ;
 int PATB_GR ;
 int PRTS_MASK ;
 scalar_t__ atomic_read (int *) ;
 int cpu_has_feature (int ) ;
 int kvm_is_radix (struct kvm*) ;
 scalar_t__ kvmhv_on_pseries () ;
 int kvmppc_setup_partition_table (struct kvm*) ;
 int kvmppc_switch_mmu_to_hpt (struct kvm*) ;
 int kvmppc_switch_mmu_to_radix (struct kvm*) ;
 int kvmppc_update_lpcr (struct kvm*,unsigned long,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radix_enabled () ;
 int smp_mb () ;

__attribute__((used)) static int kvmhv_configure_mmu(struct kvm *kvm, struct kvm_ppc_mmuv3_cfg *cfg)
{
 unsigned long lpcr;
 int radix;
 int err;


 if (!cpu_has_feature(CPU_FTR_ARCH_300))
  return -ENODEV;


 if (cfg->flags & ~(KVM_PPC_MMUV3_RADIX | KVM_PPC_MMUV3_GTSE))
  return -EINVAL;


 radix = !!(cfg->flags & KVM_PPC_MMUV3_RADIX);
 if (!!(cfg->process_table & PATB_GR) != radix)
  return -EINVAL;


 if ((cfg->process_table & PRTS_MASK) > 24)
  return -EINVAL;


 if (radix && !radix_enabled())
  return -EINVAL;


 if (kvmhv_on_pseries() && !radix)
  return -EINVAL;

 mutex_lock(&kvm->arch.mmu_setup_lock);
 if (radix != kvm_is_radix(kvm)) {
  if (kvm->arch.mmu_ready) {
   kvm->arch.mmu_ready = 0;

   smp_mb();
   if (atomic_read(&kvm->arch.vcpus_running)) {
    kvm->arch.mmu_ready = 1;
    err = -EBUSY;
    goto out_unlock;
   }
  }
  if (radix)
   err = kvmppc_switch_mmu_to_radix(kvm);
  else
   err = kvmppc_switch_mmu_to_hpt(kvm);
  if (err)
   goto out_unlock;
 }

 kvm->arch.process_table = cfg->process_table;
 kvmppc_setup_partition_table(kvm);

 lpcr = (cfg->flags & KVM_PPC_MMUV3_GTSE) ? LPCR_GTSE : 0;
 kvmppc_update_lpcr(kvm, lpcr, LPCR_GTSE);
 err = 0;

 out_unlock:
 mutex_unlock(&kvm->arch.mmu_setup_lock);
 return err;
}
