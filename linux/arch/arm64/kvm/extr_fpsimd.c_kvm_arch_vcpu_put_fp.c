
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int * sys_regs; } ;
struct TYPE_3__ {int flags; TYPE_2__ ctxt; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int CPACR_EL1 ;
 int CPACR_EL1_ZEN_EL0EN ;
 int KVM_ARM64_FP_ENABLED ;
 int KVM_ARM64_HOST_SVE_ENABLED ;
 int KVM_ARM64_HOST_SVE_IN_USE ;
 int SYS_ZCR_EL12 ;
 int TIF_SVE ;
 size_t ZCR_EL1 ;
 int fpsimd_save_and_flush_cpu_state () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int read_sysreg_s (int ) ;
 int sysreg_clear_set (int ,int ,int ) ;
 int system_supports_sve () ;
 int update_thread_flag (int ,int) ;
 int vcpu_has_sve (struct kvm_vcpu*) ;

void kvm_arch_vcpu_put_fp(struct kvm_vcpu *vcpu)
{
 unsigned long flags;
 bool host_has_sve = system_supports_sve();
 bool guest_has_sve = vcpu_has_sve(vcpu);

 local_irq_save(flags);

 if (vcpu->arch.flags & KVM_ARM64_FP_ENABLED) {
  u64 *guest_zcr = &vcpu->arch.ctxt.sys_regs[ZCR_EL1];

  fpsimd_save_and_flush_cpu_state();

  if (guest_has_sve)
   *guest_zcr = read_sysreg_s(SYS_ZCR_EL12);
 } else if (host_has_sve) {







  if (vcpu->arch.flags & KVM_ARM64_HOST_SVE_ENABLED)
   sysreg_clear_set(CPACR_EL1, 0, CPACR_EL1_ZEN_EL0EN);
  else
   sysreg_clear_set(CPACR_EL1, CPACR_EL1_ZEN_EL0EN, 0);
 }

 update_thread_flag(TIF_SVE,
      vcpu->arch.flags & KVM_ARM64_HOST_SVE_IN_USE);

 local_irq_restore(flags);
}
