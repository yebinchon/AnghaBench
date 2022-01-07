
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * dbg_wvr; int * dbg_wcr; int * dbg_bvr; int * dbg_bcr; } ;
struct TYPE_4__ {int flags; int mdcr_el2; TYPE_1__ vcpu_debug_state; TYPE_1__* debug_ptr; TYPE_1__ external_debug_state; } ;
struct kvm_vcpu {int guest_debug; TYPE_2__ arch; } ;


 int BUG_ON (int) ;
 unsigned long DBG_MDSCR_KDE ;
 unsigned long DBG_MDSCR_MDE ;
 unsigned long DBG_MDSCR_SS ;
 unsigned long DBG_SPSR_SS ;
 int KVM_ARM64_DEBUG_DIRTY ;
 int KVM_GUESTDBG_SINGLESTEP ;
 int KVM_GUESTDBG_USE_HW ;
 int MDCR_EL2_HPMN_MASK ;
 int MDCR_EL2_TDA ;
 int MDCR_EL2_TDE ;
 int MDCR_EL2_TDOSA ;
 int MDCR_EL2_TDRA ;
 int MDCR_EL2_TPM ;
 int MDCR_EL2_TPMCR ;
 int MDCR_EL2_TPMS ;
 int MDSCR_EL1 ;
 int __this_cpu_read (int ) ;
 int get_num_brps () ;
 int get_num_wrps () ;
 int mdcr_el2 ;
 int save_guest_debug_regs (struct kvm_vcpu*) ;
 int trace_kvm_arm_set_dreg32 (char*,unsigned long) ;
 int trace_kvm_arm_set_regset (char*,int ,int *,int *) ;
 int trace_kvm_arm_setup_debug (struct kvm_vcpu*,int) ;
 unsigned long* vcpu_cpsr (struct kvm_vcpu*) ;
 unsigned long vcpu_read_sys_reg (struct kvm_vcpu*,int ) ;
 int vcpu_write_sys_reg (struct kvm_vcpu*,unsigned long,int ) ;

void kvm_arm_setup_debug(struct kvm_vcpu *vcpu)
{
 bool trap_debug = !(vcpu->arch.flags & KVM_ARM64_DEBUG_DIRTY);
 unsigned long mdscr;

 trace_kvm_arm_setup_debug(vcpu, vcpu->guest_debug);





 vcpu->arch.mdcr_el2 = __this_cpu_read(mdcr_el2) & MDCR_EL2_HPMN_MASK;
 vcpu->arch.mdcr_el2 |= (MDCR_EL2_TPM |
    MDCR_EL2_TPMS |
    MDCR_EL2_TPMCR |
    MDCR_EL2_TDRA |
    MDCR_EL2_TDOSA);


 if (vcpu->guest_debug) {

  vcpu->arch.mdcr_el2 |= MDCR_EL2_TDE;


  save_guest_debug_regs(vcpu);
  if (vcpu->guest_debug & KVM_GUESTDBG_SINGLESTEP) {
   *vcpu_cpsr(vcpu) |= DBG_SPSR_SS;
   mdscr = vcpu_read_sys_reg(vcpu, MDSCR_EL1);
   mdscr |= DBG_MDSCR_SS;
   vcpu_write_sys_reg(vcpu, mdscr, MDSCR_EL1);
  } else {
   mdscr = vcpu_read_sys_reg(vcpu, MDSCR_EL1);
   mdscr &= ~DBG_MDSCR_SS;
   vcpu_write_sys_reg(vcpu, mdscr, MDSCR_EL1);
  }

  trace_kvm_arm_set_dreg32("SPSR_EL2", *vcpu_cpsr(vcpu));
  if (vcpu->guest_debug & KVM_GUESTDBG_USE_HW) {

   mdscr = vcpu_read_sys_reg(vcpu, MDSCR_EL1);
   mdscr |= DBG_MDSCR_MDE;
   vcpu_write_sys_reg(vcpu, mdscr, MDSCR_EL1);

   vcpu->arch.debug_ptr = &vcpu->arch.external_debug_state;
   vcpu->arch.flags |= KVM_ARM64_DEBUG_DIRTY;
   trap_debug = 1;

   trace_kvm_arm_set_regset("BKPTS", get_num_brps(),
      &vcpu->arch.debug_ptr->dbg_bcr[0],
      &vcpu->arch.debug_ptr->dbg_bvr[0]);

   trace_kvm_arm_set_regset("WAPTS", get_num_wrps(),
      &vcpu->arch.debug_ptr->dbg_wcr[0],
      &vcpu->arch.debug_ptr->dbg_wvr[0]);
  }
 }

 BUG_ON(!vcpu->guest_debug &&
  vcpu->arch.debug_ptr != &vcpu->arch.vcpu_debug_state);


 if (trap_debug)
  vcpu->arch.mdcr_el2 |= MDCR_EL2_TDA;


 if (vcpu_read_sys_reg(vcpu, MDSCR_EL1) & (DBG_MDSCR_KDE | DBG_MDSCR_MDE))
  vcpu->arch.flags |= KVM_ARM64_DEBUG_DIRTY;

 trace_kvm_arm_set_dreg32("MDCR_EL2", vcpu->arch.mdcr_el2);
 trace_kvm_arm_set_dreg32("MDSCR_EL1", vcpu_read_sys_reg(vcpu, MDSCR_EL1));
}
