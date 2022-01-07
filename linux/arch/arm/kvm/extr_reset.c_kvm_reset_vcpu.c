
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int reset; unsigned long pc; int r0; scalar_t__ be; } ;
struct TYPE_4__ {int gp_regs; } ;
struct TYPE_6__ {int target; TYPE_2__ reset_state; TYPE_1__ ctxt; int midr; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct kvm_regs {int dummy; } ;


 int ENODEV ;


 scalar_t__ READ_ONCE (int) ;
 struct kvm_regs cortexa_regs_reset ;
 int kvm_reset_coprocs (struct kvm_vcpu*) ;
 int kvm_timer_vcpu_reset (struct kvm_vcpu*) ;
 int kvm_vcpu_set_be (struct kvm_vcpu*) ;
 int memcpy (int *,struct kvm_regs*,int) ;
 int read_cpuid_id () ;
 unsigned long* vcpu_pc (struct kvm_vcpu*) ;
 int vcpu_set_reg (struct kvm_vcpu*,int ,int ) ;
 int vcpu_set_thumb (struct kvm_vcpu*) ;

int kvm_reset_vcpu(struct kvm_vcpu *vcpu)
{
 struct kvm_regs *reset_regs;

 switch (vcpu->arch.target) {
 case 128:
 case 129:
  reset_regs = &cortexa_regs_reset;
  vcpu->arch.midr = read_cpuid_id();
  break;
 default:
  return -ENODEV;
 }


 memcpy(&vcpu->arch.ctxt.gp_regs, reset_regs, sizeof(vcpu->arch.ctxt.gp_regs));


 kvm_reset_coprocs(vcpu);





 if (READ_ONCE(vcpu->arch.reset_state.reset)) {
  unsigned long target_pc = vcpu->arch.reset_state.pc;


  if (target_pc & 1) {
   target_pc &= ~1UL;
   vcpu_set_thumb(vcpu);
  }


  if (vcpu->arch.reset_state.be)
   kvm_vcpu_set_be(vcpu);

  *vcpu_pc(vcpu) = target_pc;
  vcpu_set_reg(vcpu, 0, vcpu->arch.reset_state.r0);

  vcpu->arch.reset_state.reset = 0;
 }


 return kvm_timer_vcpu_reset(vcpu);
}
