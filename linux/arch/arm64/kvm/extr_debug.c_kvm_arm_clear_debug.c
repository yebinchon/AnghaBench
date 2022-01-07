
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* debug_ptr; } ;
struct kvm_vcpu {int guest_debug; TYPE_2__ arch; } ;
struct TYPE_3__ {int * dbg_wvr; int * dbg_wcr; int * dbg_bvr; int * dbg_bcr; } ;


 int KVM_GUESTDBG_USE_HW ;
 int get_num_brps () ;
 int get_num_wrps () ;
 int kvm_arm_reset_debug_ptr (struct kvm_vcpu*) ;
 int restore_guest_debug_regs (struct kvm_vcpu*) ;
 int trace_kvm_arm_clear_debug (int) ;
 int trace_kvm_arm_set_regset (char*,int ,int *,int *) ;

void kvm_arm_clear_debug(struct kvm_vcpu *vcpu)
{
 trace_kvm_arm_clear_debug(vcpu->guest_debug);

 if (vcpu->guest_debug) {
  restore_guest_debug_regs(vcpu);





  if (vcpu->guest_debug & KVM_GUESTDBG_USE_HW) {
   kvm_arm_reset_debug_ptr(vcpu);

   trace_kvm_arm_set_regset("BKPTS", get_num_brps(),
      &vcpu->arch.debug_ptr->dbg_bcr[0],
      &vcpu->arch.debug_ptr->dbg_bvr[0]);

   trace_kvm_arm_set_regset("WAPTS", get_num_wrps(),
      &vcpu->arch.debug_ptr->dbg_wcr[0],
      &vcpu->arch.debug_ptr->dbg_wvr[0]);
  }
 }
}
