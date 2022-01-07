
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nip; } ;
struct TYPE_6__ {int shadow_msr; int shadow_pid; int ivpr; int* ivor; TYPE_2__* shared; TYPE_1__ regs; } ;
struct kvm_vcpu {TYPE_3__ arch; int vcpu_id; } ;
struct TYPE_5__ {scalar_t__ msr; int pir; } ;


 int BOOKE_IRQPRIO_MAX ;
 int MSR_DS ;
 int MSR_IS ;
 int MSR_USER ;
 int kvmppc_core_vcpu_setup (struct kvm_vcpu*) ;
 int kvmppc_init_timing_stats (struct kvm_vcpu*) ;
 int kvmppc_sanity_check (struct kvm_vcpu*) ;
 int kvmppc_set_gpr (struct kvm_vcpu*,int,int) ;
 int kvmppc_set_msr (struct kvm_vcpu*,int ) ;

int kvm_arch_vcpu_setup(struct kvm_vcpu *vcpu)
{
 int i;
 int r;

 vcpu->arch.regs.nip = 0;
 vcpu->arch.shared->pir = vcpu->vcpu_id;
 kvmppc_set_gpr(vcpu, 1, (16<<20) - 8);
 kvmppc_set_msr(vcpu, 0);


 vcpu->arch.shadow_msr = MSR_USER | MSR_IS | MSR_DS;
 vcpu->arch.shadow_pid = 1;
 vcpu->arch.shared->msr = 0;




 vcpu->arch.ivpr = 0x55550000;
 for (i = 0; i < BOOKE_IRQPRIO_MAX; i++)
  vcpu->arch.ivor[i] = 0x7700 | i * 4;

 kvmppc_init_timing_stats(vcpu);

 r = kvmppc_core_vcpu_setup(vcpu);
 kvmppc_sanity_check(vcpu);
 return r;
}
