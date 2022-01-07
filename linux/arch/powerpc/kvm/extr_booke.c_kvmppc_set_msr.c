
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* shared; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int msr; } ;


 int MSR_GS ;
 int kvmppc_mmu_msr_notify (struct kvm_vcpu*,int ) ;
 int kvmppc_vcpu_sync_debug (struct kvm_vcpu*) ;
 int kvmppc_vcpu_sync_fpu (struct kvm_vcpu*) ;
 int kvmppc_vcpu_sync_spe (struct kvm_vcpu*) ;

void kvmppc_set_msr(struct kvm_vcpu *vcpu, u32 new_msr)
{
 u32 old_msr = vcpu->arch.shared->msr;





 vcpu->arch.shared->msr = new_msr;

 kvmppc_mmu_msr_notify(vcpu, old_msr);
 kvmppc_vcpu_sync_spe(vcpu);
 kvmppc_vcpu_sync_fpu(vcpu);
 kvmppc_vcpu_sync_debug(vcpu);
}
