
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int link; int ctr; int nip; } ;
struct TYPE_6__ {int pid; TYPE_2__* shared; TYPE_1__ regs; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct kvm_regs {int * gpr; int sprg7; int sprg6; int sprg5; int sprg4; int sprg3; int sprg2; int sprg1; int sprg0; int pid; int srr1; int srr0; int msr; int xer; int lr; int ctr; int cr; int pc; } ;
struct TYPE_5__ {int msr; } ;


 int ARRAY_SIZE (int *) ;
 int kvmppc_get_cr (struct kvm_vcpu*) ;
 int kvmppc_get_gpr (struct kvm_vcpu*,int) ;
 int kvmppc_get_sprg0 (struct kvm_vcpu*) ;
 int kvmppc_get_sprg1 (struct kvm_vcpu*) ;
 int kvmppc_get_sprg2 (struct kvm_vcpu*) ;
 int kvmppc_get_sprg3 (struct kvm_vcpu*) ;
 int kvmppc_get_sprg4 (struct kvm_vcpu*) ;
 int kvmppc_get_sprg5 (struct kvm_vcpu*) ;
 int kvmppc_get_sprg6 (struct kvm_vcpu*) ;
 int kvmppc_get_sprg7 (struct kvm_vcpu*) ;
 int kvmppc_get_srr0 (struct kvm_vcpu*) ;
 int kvmppc_get_srr1 (struct kvm_vcpu*) ;
 int kvmppc_get_xer (struct kvm_vcpu*) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_ioctl_get_regs(struct kvm_vcpu *vcpu, struct kvm_regs *regs)
{
 int i;

 vcpu_load(vcpu);

 regs->pc = vcpu->arch.regs.nip;
 regs->cr = kvmppc_get_cr(vcpu);
 regs->ctr = vcpu->arch.regs.ctr;
 regs->lr = vcpu->arch.regs.link;
 regs->xer = kvmppc_get_xer(vcpu);
 regs->msr = vcpu->arch.shared->msr;
 regs->srr0 = kvmppc_get_srr0(vcpu);
 regs->srr1 = kvmppc_get_srr1(vcpu);
 regs->pid = vcpu->arch.pid;
 regs->sprg0 = kvmppc_get_sprg0(vcpu);
 regs->sprg1 = kvmppc_get_sprg1(vcpu);
 regs->sprg2 = kvmppc_get_sprg2(vcpu);
 regs->sprg3 = kvmppc_get_sprg3(vcpu);
 regs->sprg4 = kvmppc_get_sprg4(vcpu);
 regs->sprg5 = kvmppc_get_sprg5(vcpu);
 regs->sprg6 = kvmppc_get_sprg6(vcpu);
 regs->sprg7 = kvmppc_get_sprg7(vcpu);

 for (i = 0; i < ARRAY_SIZE(regs->gpr); i++)
  regs->gpr[i] = kvmppc_get_gpr(vcpu, i);

 vcpu_put(vcpu);
 return 0;
}
