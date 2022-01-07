
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_14__ {void* event_exit_inst_len; } ;
struct TYPE_15__ {TYPE_5__ arch; } ;
struct TYPE_12__ {scalar_t__ vm86_active; } ;
struct vcpu_vmx {int idt_vectoring_info; int exit_intr_info; TYPE_6__ vcpu; TYPE_3__ rmode; } ;
struct TYPE_11__ {int host_apf_reason; } ;
struct TYPE_13__ {unsigned long dr6; TYPE_2__ apf; } ;
struct kvm_vcpu {int guest_debug; TYPE_4__ arch; struct kvm_run* run; } ;
struct TYPE_18__ {int exception; int error_code; } ;
struct TYPE_16__ {unsigned long dr6; unsigned long dr7; unsigned long pc; int exception; } ;
struct TYPE_17__ {TYPE_7__ arch; } ;
struct TYPE_10__ {int ndata; int* data; int suberror; } ;
struct kvm_run {TYPE_9__ ex; int exit_reason; TYPE_8__ debug; TYPE_1__ internal; } ;





 unsigned long DR6_FIXED_1 ;
 unsigned long DR6_RTM ;
 unsigned long DR_TRAP_BITS ;
 int EMULTYPE_VMWARE_GP ;
 int EXIT_QUALIFICATION ;
 int const GP_VECTOR ;
 int GUEST_CS_BASE ;
 int GUEST_DR7 ;
 int INTR_INFO_DELIVER_CODE_MASK ;
 int INTR_INFO_VECTOR_MASK ;
 int KVM_EXIT_DEBUG ;
 int KVM_EXIT_EXCEPTION ;
 int KVM_EXIT_INTERNAL_ERROR ;
 int KVM_GUESTDBG_SINGLESTEP ;
 int KVM_GUESTDBG_USE_HW_BP ;
 int KVM_INTERNAL_ERROR_SIMUL_EX ;
 int PFERR_RSVD_MASK ;
 int VECTORING_INFO_VALID_MASK ;
 int VM_EXIT_INSTRUCTION_LEN ;
 int VM_EXIT_INTR_ERROR_CODE ;
 int WARN_ON (int) ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ enable_ept ;
 int enable_vmware_backdoor ;
 int handle_rmode_exception (struct kvm_vcpu*,int,int) ;
 int handle_ud (struct kvm_vcpu*) ;
 scalar_t__ is_gp_fault (int) ;
 int is_icebp (int) ;
 scalar_t__ is_invalid_opcode (int) ;
 scalar_t__ is_machine_check (int) ;
 scalar_t__ is_nmi (int) ;
 scalar_t__ is_page_fault (int) ;
 int kvm_emulate_instruction (struct kvm_vcpu*,int ) ;
 int kvm_handle_page_fault (struct kvm_vcpu*,int,unsigned long,int *,int ) ;
 int kvm_queue_exception (struct kvm_vcpu*,int const) ;
 int kvm_queue_exception_e (struct kvm_vcpu*,int const,int) ;
 unsigned long kvm_rip_read (struct kvm_vcpu*) ;
 scalar_t__ rmode_exception (struct kvm_vcpu*,int) ;
 int skip_emulated_instruction (struct kvm_vcpu*) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 void* vmcs_read32 (int ) ;
 unsigned long vmcs_readl (int ) ;

__attribute__((used)) static int handle_exception_nmi(struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 struct kvm_run *kvm_run = vcpu->run;
 u32 intr_info, ex_no, error_code;
 unsigned long cr2, rip, dr6;
 u32 vect_info;

 vect_info = vmx->idt_vectoring_info;
 intr_info = vmx->exit_intr_info;

 if (is_machine_check(intr_info) || is_nmi(intr_info))
  return 1;

 if (is_invalid_opcode(intr_info))
  return handle_ud(vcpu);

 error_code = 0;
 if (intr_info & INTR_INFO_DELIVER_CODE_MASK)
  error_code = vmcs_read32(VM_EXIT_INTR_ERROR_CODE);

 if (!vmx->rmode.vm86_active && is_gp_fault(intr_info)) {
  WARN_ON_ONCE(!enable_vmware_backdoor);






  if (error_code) {
   kvm_queue_exception_e(vcpu, GP_VECTOR, error_code);
   return 1;
  }
  return kvm_emulate_instruction(vcpu, EMULTYPE_VMWARE_GP);
 }






 if ((vect_info & VECTORING_INFO_VALID_MASK) &&
     !(is_page_fault(intr_info) && !(error_code & PFERR_RSVD_MASK))) {
  vcpu->run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
  vcpu->run->internal.suberror = KVM_INTERNAL_ERROR_SIMUL_EX;
  vcpu->run->internal.ndata = 3;
  vcpu->run->internal.data[0] = vect_info;
  vcpu->run->internal.data[1] = intr_info;
  vcpu->run->internal.data[2] = error_code;
  return 0;
 }

 if (is_page_fault(intr_info)) {
  cr2 = vmcs_readl(EXIT_QUALIFICATION);

  WARN_ON_ONCE(!vcpu->arch.apf.host_apf_reason && enable_ept);
  return kvm_handle_page_fault(vcpu, error_code, cr2, ((void*)0), 0);
 }

 ex_no = intr_info & INTR_INFO_VECTOR_MASK;

 if (vmx->rmode.vm86_active && rmode_exception(vcpu, ex_no))
  return handle_rmode_exception(vcpu, ex_no, error_code);

 switch (ex_no) {
 case 130:
  kvm_queue_exception_e(vcpu, 130, error_code);
  return 1;
 case 128:
  dr6 = vmcs_readl(EXIT_QUALIFICATION);
  if (!(vcpu->guest_debug &
        (KVM_GUESTDBG_SINGLESTEP | KVM_GUESTDBG_USE_HW_BP))) {
   vcpu->arch.dr6 &= ~DR_TRAP_BITS;
   vcpu->arch.dr6 |= dr6 | DR6_RTM;
   if (is_icebp(intr_info))
    WARN_ON(!skip_emulated_instruction(vcpu));

   kvm_queue_exception(vcpu, 128);
   return 1;
  }
  kvm_run->debug.arch.dr6 = dr6 | DR6_FIXED_1;
  kvm_run->debug.arch.dr7 = vmcs_readl(GUEST_DR7);

 case 129:





  vmx->vcpu.arch.event_exit_inst_len =
   vmcs_read32(VM_EXIT_INSTRUCTION_LEN);
  kvm_run->exit_reason = KVM_EXIT_DEBUG;
  rip = kvm_rip_read(vcpu);
  kvm_run->debug.arch.pc = vmcs_readl(GUEST_CS_BASE) + rip;
  kvm_run->debug.arch.exception = ex_no;
  break;
 default:
  kvm_run->exit_reason = KVM_EXIT_EXCEPTION;
  kvm_run->ex.exception = ex_no;
  kvm_run->ex.error_code = error_code;
  break;
 }
 return 0;
}
