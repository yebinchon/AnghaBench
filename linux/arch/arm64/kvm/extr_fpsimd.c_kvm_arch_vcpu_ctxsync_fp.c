
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fp_regs; } ;
struct TYPE_5__ {TYPE_1__ gp_regs; } ;
struct TYPE_6__ {int flags; int sve_max_vl; int sve_state; TYPE_2__ ctxt; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;


 int KVM_ARM64_FP_ENABLED ;
 int TIF_FOREIGN_FPSTATE ;
 int TIF_SVE ;
 int WARN_ON_ONCE (int) ;
 int clear_thread_flag (int ) ;
 int fpsimd_bind_state_to_cpu (int *,int ,int ) ;
 int irqs_disabled () ;
 int update_thread_flag (int ,int ) ;
 int vcpu_has_sve (struct kvm_vcpu*) ;

void kvm_arch_vcpu_ctxsync_fp(struct kvm_vcpu *vcpu)
{
 WARN_ON_ONCE(!irqs_disabled());

 if (vcpu->arch.flags & KVM_ARM64_FP_ENABLED) {
  fpsimd_bind_state_to_cpu(&vcpu->arch.ctxt.gp_regs.fp_regs,
      vcpu->arch.sve_state,
      vcpu->arch.sve_max_vl);

  clear_thread_flag(TIF_FOREIGN_FPSTATE);
  update_thread_flag(TIF_SVE, vcpu_has_sve(vcpu));
 }
}
