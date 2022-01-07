
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long KVM_ARM_SVC_spsr; unsigned long KVM_ARM_ABT_spsr; unsigned long KVM_ARM_UND_spsr; unsigned long KVM_ARM_IRQ_spsr; unsigned long KVM_ARM_FIQ_spsr; } ;
struct TYPE_5__ {TYPE_1__ gp_regs; } ;
struct TYPE_6__ {TYPE_2__ ctxt; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;



 int BUG () ;


 unsigned long MODE_MASK ;


 unsigned long* vcpu_cpsr (struct kvm_vcpu*) ;

unsigned long *__vcpu_spsr(struct kvm_vcpu *vcpu)
{
 unsigned long mode = *vcpu_cpsr(vcpu) & MODE_MASK;
 switch (mode) {
 case 129:
  return &vcpu->arch.ctxt.gp_regs.KVM_ARM_SVC_spsr;
 case 132:
  return &vcpu->arch.ctxt.gp_regs.KVM_ARM_ABT_spsr;
 case 128:
  return &vcpu->arch.ctxt.gp_regs.KVM_ARM_UND_spsr;
 case 130:
  return &vcpu->arch.ctxt.gp_regs.KVM_ARM_IRQ_spsr;
 case 131:
  return &vcpu->arch.ctxt.gp_regs.KVM_ARM_FIQ_spsr;
 default:
  BUG();
 }
}
