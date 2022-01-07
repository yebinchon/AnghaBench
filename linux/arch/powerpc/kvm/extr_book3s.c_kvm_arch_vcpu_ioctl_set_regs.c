
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_regs {int * gpr; int sprg7; int sprg6; int sprg5; int sprg4; int sprg3; int sprg2; int sprg1; int sprg0; int srr1; int srr0; int msr; int xer; int lr; int ctr; int cr; int pc; } ;


 int ARRAY_SIZE (int *) ;
 int kvmppc_set_cr (struct kvm_vcpu*,int ) ;
 int kvmppc_set_ctr (struct kvm_vcpu*,int ) ;
 int kvmppc_set_gpr (struct kvm_vcpu*,int,int ) ;
 int kvmppc_set_lr (struct kvm_vcpu*,int ) ;
 int kvmppc_set_msr (struct kvm_vcpu*,int ) ;
 int kvmppc_set_pc (struct kvm_vcpu*,int ) ;
 int kvmppc_set_sprg0 (struct kvm_vcpu*,int ) ;
 int kvmppc_set_sprg1 (struct kvm_vcpu*,int ) ;
 int kvmppc_set_sprg2 (struct kvm_vcpu*,int ) ;
 int kvmppc_set_sprg3 (struct kvm_vcpu*,int ) ;
 int kvmppc_set_sprg4 (struct kvm_vcpu*,int ) ;
 int kvmppc_set_sprg5 (struct kvm_vcpu*,int ) ;
 int kvmppc_set_sprg6 (struct kvm_vcpu*,int ) ;
 int kvmppc_set_sprg7 (struct kvm_vcpu*,int ) ;
 int kvmppc_set_srr0 (struct kvm_vcpu*,int ) ;
 int kvmppc_set_srr1 (struct kvm_vcpu*,int ) ;
 int kvmppc_set_xer (struct kvm_vcpu*,int ) ;

int kvm_arch_vcpu_ioctl_set_regs(struct kvm_vcpu *vcpu, struct kvm_regs *regs)
{
 int i;

 kvmppc_set_pc(vcpu, regs->pc);
 kvmppc_set_cr(vcpu, regs->cr);
 kvmppc_set_ctr(vcpu, regs->ctr);
 kvmppc_set_lr(vcpu, regs->lr);
 kvmppc_set_xer(vcpu, regs->xer);
 kvmppc_set_msr(vcpu, regs->msr);
 kvmppc_set_srr0(vcpu, regs->srr0);
 kvmppc_set_srr1(vcpu, regs->srr1);
 kvmppc_set_sprg0(vcpu, regs->sprg0);
 kvmppc_set_sprg1(vcpu, regs->sprg1);
 kvmppc_set_sprg2(vcpu, regs->sprg2);
 kvmppc_set_sprg3(vcpu, regs->sprg3);
 kvmppc_set_sprg4(vcpu, regs->sprg4);
 kvmppc_set_sprg5(vcpu, regs->sprg5);
 kvmppc_set_sprg6(vcpu, regs->sprg6);
 kvmppc_set_sprg7(vcpu, regs->sprg7);

 for (i = 0; i < ARRAY_SIZE(regs->gpr); i++)
  kvmppc_set_gpr(vcpu, i, regs->gpr[i]);

 return 0;
}
