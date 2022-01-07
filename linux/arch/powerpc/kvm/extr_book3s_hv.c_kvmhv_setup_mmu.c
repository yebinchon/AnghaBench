
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {struct kvm* kvm; } ;
struct TYPE_2__ {int mmu_ready; int mmu_setup_lock; } ;
struct kvm {TYPE_1__ arch; } ;


 int CPU_FTR_ARCH_300 ;
 scalar_t__ cpu_has_feature (int ) ;
 int kvm_is_radix (struct kvm*) ;
 int kvmppc_hv_setup_htab_rma (struct kvm_vcpu*) ;
 int kvmppc_setup_partition_table (struct kvm*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int kvmhv_setup_mmu(struct kvm_vcpu *vcpu)
{
 int r = 0;
 struct kvm *kvm = vcpu->kvm;

 mutex_lock(&kvm->arch.mmu_setup_lock);
 if (!kvm->arch.mmu_ready) {
  if (!kvm_is_radix(kvm))
   r = kvmppc_hv_setup_htab_rma(vcpu);
  if (!r) {
   if (cpu_has_feature(CPU_FTR_ARCH_300))
    kvmppc_setup_partition_table(kvm);
   kvm->arch.mmu_ready = 1;
  }
 }
 mutex_unlock(&kvm->arch.mmu_setup_lock);
 return r;
}
