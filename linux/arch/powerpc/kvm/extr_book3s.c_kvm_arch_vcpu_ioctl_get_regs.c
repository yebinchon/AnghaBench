
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pid; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_regs {int * gpr; int sprg7; int sprg6; int sprg5; int sprg4; int sprg3; int sprg2; int sprg1; int sprg0; int pid; int srr1; int srr0; int msr; int xer; int lr; int ctr; int cr; int pc; } ;


 int ARRAY_SIZE (int *) ;
 int kvmppc_get_cr (struct kvm_vcpu*) ;
 int kvmppc_get_ctr (struct kvm_vcpu*) ;
 int kvmppc_get_gpr (struct kvm_vcpu*,int) ;
 int kvmppc_get_lr (struct kvm_vcpu*) ;
 int kvmppc_get_msr (struct kvm_vcpu*) ;
 int kvmppc_get_pc (struct kvm_vcpu*) ;
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

int kvm_arch_vcpu_ioctl_get_regs(struct kvm_vcpu *vcpu, struct kvm_regs *regs)
{
 int i;

 regs->pc = kvmppc_get_pc(vcpu);
 regs->cr = kvmppc_get_cr(vcpu);
 regs->ctr = kvmppc_get_ctr(vcpu);
 regs->lr = kvmppc_get_lr(vcpu);
 regs->xer = kvmppc_get_xer(vcpu);
 regs->msr = kvmppc_get_msr(vcpu);
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

 return 0;
}
