
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reset; unsigned long pc; int r0; scalar_t__ be; } ;
struct TYPE_4__ {int target; int workaround_flags; TYPE_1__ reset_state; int features; } ;
struct kvm_vcpu {int cpu; TYPE_2__ arch; } ;
struct kvm_regs {int dummy; } ;


 int EINVAL ;
 int KVM_ARM_VCPU_EL1_32BIT ;
 int KVM_ARM_VCPU_PTRAUTH_ADDRESS ;
 int KVM_ARM_VCPU_PTRAUTH_GENERIC ;
 int KVM_ARM_VCPU_SVE ;
 scalar_t__ KVM_SSBD_KERNEL ;
 int VCPU_WORKAROUND_2_FLAG ;
 int cpu_has_32bit_el1 () ;
 struct kvm_regs default_regs_reset ;
 struct kvm_regs default_regs_reset32 ;
 int kvm_arch_vcpu_load (struct kvm_vcpu*,int ) ;
 int kvm_arch_vcpu_put (struct kvm_vcpu*) ;
 scalar_t__ kvm_arm_have_ssbd () ;
 int kvm_arm_vcpu_sve_finalized (struct kvm_vcpu*) ;
 int kvm_pmu_vcpu_reset (struct kvm_vcpu*) ;
 int kvm_reset_sys_regs (struct kvm_vcpu*) ;
 int kvm_timer_vcpu_reset (struct kvm_vcpu*) ;
 scalar_t__ kvm_vcpu_enable_ptrauth (struct kvm_vcpu*) ;
 int kvm_vcpu_enable_sve (struct kvm_vcpu*) ;
 int kvm_vcpu_reset_sve (struct kvm_vcpu*) ;
 int kvm_vcpu_set_be (struct kvm_vcpu*) ;
 int memcpy (int ,struct kvm_regs const*,int) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int smp_processor_id () ;
 scalar_t__ test_bit (int ,int ) ;
 int vcpu_gp_regs (struct kvm_vcpu*) ;
 scalar_t__ vcpu_mode_is_32bit (struct kvm_vcpu*) ;
 unsigned long* vcpu_pc (struct kvm_vcpu*) ;
 int vcpu_set_reg (struct kvm_vcpu*,int ,int ) ;
 int vcpu_set_thumb (struct kvm_vcpu*) ;

int kvm_reset_vcpu(struct kvm_vcpu *vcpu)
{
 const struct kvm_regs *cpu_reset;
 int ret = -EINVAL;
 bool loaded;


 kvm_pmu_vcpu_reset(vcpu);

 preempt_disable();
 loaded = (vcpu->cpu != -1);
 if (loaded)
  kvm_arch_vcpu_put(vcpu);

 if (!kvm_arm_vcpu_sve_finalized(vcpu)) {
  if (test_bit(KVM_ARM_VCPU_SVE, vcpu->arch.features)) {
   ret = kvm_vcpu_enable_sve(vcpu);
   if (ret)
    goto out;
  }
 } else {
  kvm_vcpu_reset_sve(vcpu);
 }

 if (test_bit(KVM_ARM_VCPU_PTRAUTH_ADDRESS, vcpu->arch.features) ||
     test_bit(KVM_ARM_VCPU_PTRAUTH_GENERIC, vcpu->arch.features)) {
  if (kvm_vcpu_enable_ptrauth(vcpu))
   goto out;
 }

 switch (vcpu->arch.target) {
 default:
  if (test_bit(KVM_ARM_VCPU_EL1_32BIT, vcpu->arch.features)) {
   if (!cpu_has_32bit_el1())
    goto out;
   cpu_reset = &default_regs_reset32;
  } else {
   cpu_reset = &default_regs_reset;
  }

  break;
 }


 memcpy(vcpu_gp_regs(vcpu), cpu_reset, sizeof(*cpu_reset));


 kvm_reset_sys_regs(vcpu);





 if (vcpu->arch.reset_state.reset) {
  unsigned long target_pc = vcpu->arch.reset_state.pc;


  if (vcpu_mode_is_32bit(vcpu) && (target_pc & 1)) {
   target_pc &= ~1UL;
   vcpu_set_thumb(vcpu);
  }


  if (vcpu->arch.reset_state.be)
   kvm_vcpu_set_be(vcpu);

  *vcpu_pc(vcpu) = target_pc;
  vcpu_set_reg(vcpu, 0, vcpu->arch.reset_state.r0);

  vcpu->arch.reset_state.reset = 0;
 }


 if (kvm_arm_have_ssbd() == KVM_SSBD_KERNEL)
  vcpu->arch.workaround_flags |= VCPU_WORKAROUND_2_FLAG;


 ret = kvm_timer_vcpu_reset(vcpu);
out:
 if (loaded)
  kvm_arch_vcpu_load(vcpu, smp_processor_id());
 preempt_enable();
 return ret;
}
