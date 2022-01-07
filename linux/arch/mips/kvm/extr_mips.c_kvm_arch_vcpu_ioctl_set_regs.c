
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pc; int lo; int hi; scalar_t__* gprs; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_regs {int pc; int lo; int hi; scalar_t__* gpr; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_ioctl_set_regs(struct kvm_vcpu *vcpu, struct kvm_regs *regs)
{
 int i;

 vcpu_load(vcpu);

 for (i = 1; i < ARRAY_SIZE(vcpu->arch.gprs); i++)
  vcpu->arch.gprs[i] = regs->gpr[i];
 vcpu->arch.gprs[0] = 0;
 vcpu->arch.hi = regs->hi;
 vcpu->arch.lo = regs->lo;
 vcpu->arch.pc = regs->pc;

 vcpu_put(vcpu);
 return 0;
}
