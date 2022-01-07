
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int link; int ctr; int nip; } ;
struct TYPE_4__ {TYPE_1__ regs; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct kvm_regs {int * gpr; int sprg7; int sprg6; int sprg5; int sprg4; int sprg3; int sprg2; int sprg1; int sprg0; int pid; int srr1; int srr0; int msr; int xer; int lr; int ctr; int cr; int pc; } ;


 int ARRAY_SIZE (int *) ;
 int kvmppc_set_cr (struct kvm_vcpu*,int ) ;
 int kvmppc_set_gpr (struct kvm_vcpu*,int,int ) ;
 int kvmppc_set_msr (struct kvm_vcpu*,int ) ;
 int kvmppc_set_pid (struct kvm_vcpu*,int ) ;
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
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_ioctl_set_regs(struct kvm_vcpu *vcpu, struct kvm_regs *regs)
{
 int i;

 vcpu_load(vcpu);

 vcpu->arch.regs.nip = regs->pc;
 kvmppc_set_cr(vcpu, regs->cr);
 vcpu->arch.regs.ctr = regs->ctr;
 vcpu->arch.regs.link = regs->lr;
 kvmppc_set_xer(vcpu, regs->xer);
 kvmppc_set_msr(vcpu, regs->msr);
 kvmppc_set_srr0(vcpu, regs->srr0);
 kvmppc_set_srr1(vcpu, regs->srr1);
 kvmppc_set_pid(vcpu, regs->pid);
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

 vcpu_put(vcpu);
 return 0;
}
