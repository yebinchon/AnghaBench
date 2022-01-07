
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct vmcs12 {int pin_based_vm_exec_control; int cpu_based_vm_exec_control; int tpr_threshold; int secondary_vm_exec_control; int guest_cr4; int vm_entry_controls; int vm_entry_intr_info_field; int vm_entry_exception_error_code; int vm_entry_instruction_len; int guest_interruptibility_info; int guest_intr_status; int posted_intr_nv; } ;
struct TYPE_3__ {int pi_pending; scalar_t__ nested_run_pending; int posted_intr_nv; scalar_t__ hv_evmcs; scalar_t__ dirty_vmcs12; } ;
struct vcpu_vmx {int secondary_exec_control; TYPE_2__* loaded_vmcs; TYPE_1__ nested; } ;
struct TYPE_4__ {int nmi_known_unmasked; } ;


 int CPU_BASED_ACTIVATE_SECONDARY_CONTROLS ;
 int CPU_BASED_CR8_LOAD_EXITING ;
 int CPU_BASED_CR8_STORE_EXITING ;
 int CPU_BASED_TPR_SHADOW ;
 int CPU_BASED_UNCOND_IO_EXITING ;
 int CPU_BASED_USE_IO_BITMAPS ;
 int CPU_BASED_USE_MSR_BITMAPS ;
 int CPU_BASED_VIRTUAL_INTR_PENDING ;
 int CPU_BASED_VIRTUAL_NMI_PENDING ;
 int EFER_LMA ;
 int GUEST_INTERRUPTIBILITY_INFO ;
 int GUEST_INTR_STATE_NMI ;
 int GUEST_INTR_STATUS ;
 int PIN_BASED_POSTED_INTR ;
 int PIN_BASED_VMX_PREEMPTION_TIMER ;
 int SECONDARY_EXEC_APIC_REGISTER_VIRT ;
 int SECONDARY_EXEC_DESC ;
 int SECONDARY_EXEC_ENABLE_INVPCID ;
 int SECONDARY_EXEC_ENABLE_PML ;
 int SECONDARY_EXEC_ENABLE_USR_WAIT_PAUSE ;
 int SECONDARY_EXEC_ENABLE_VMFUNC ;
 int SECONDARY_EXEC_RDTSCP ;
 int SECONDARY_EXEC_SHADOW_VMCS ;
 int SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES ;
 int SECONDARY_EXEC_VIRTUAL_INTR_DELIVERY ;
 int SECONDARY_EXEC_XSAVES ;
 int TPR_THRESHOLD ;
 int VM_ENTRY_EXCEPTION_ERROR_CODE ;
 int VM_ENTRY_IA32E_MODE ;
 int VM_ENTRY_INSTRUCTION_LEN ;
 int VM_ENTRY_INTR_INFO_FIELD ;
 int VM_ENTRY_LOAD_IA32_EFER ;
 int VM_EXIT_LOAD_IA32_EFER ;
 int X86_CR4_UMIP ;
 int X86_FEATURE_UMIP ;
 int boot_cpu_has (int ) ;
 scalar_t__ cpu_has_load_ia32_efer () ;
 scalar_t__ cpu_has_secondary_exec_ctrls () ;
 int exec_controls_get (struct vcpu_vmx*) ;
 int exec_controls_set (struct vcpu_vmx*,int) ;
 int host_efer ;
 scalar_t__ nested_cpu_has (struct vmcs12*,int ) ;
 scalar_t__ nested_cpu_has_posted_intr (struct vmcs12*) ;
 int nested_vmx_calc_efer (struct vcpu_vmx*,struct vmcs12*) ;
 int pin_controls_set (struct vcpu_vmx*,int) ;
 int prepare_vmcs02_early_rare (struct vcpu_vmx*,struct vmcs12*) ;
 int secondary_exec_controls_set (struct vcpu_vmx*,int) ;
 int vm_entry_controls_set (struct vcpu_vmx*,int) ;
 int vm_exit_controls_set (struct vcpu_vmx*,int) ;
 int vmcs_write16 (int ,int ) ;
 int vmcs_write32 (int ,int) ;
 int vmx_exec_control (struct vcpu_vmx*) ;
 int vmx_pin_based_exec_ctrl (struct vcpu_vmx*) ;
 scalar_t__ vmx_umip_emulated () ;
 int vmx_vmentry_ctrl () ;
 int vmx_vmexit_ctrl () ;

__attribute__((used)) static void prepare_vmcs02_early(struct vcpu_vmx *vmx, struct vmcs12 *vmcs12)
{
 u32 exec_control, vmcs12_exec_ctrl;
 u64 guest_efer = nested_vmx_calc_efer(vmx, vmcs12);

 if (vmx->nested.dirty_vmcs12 || vmx->nested.hv_evmcs)
  prepare_vmcs02_early_rare(vmx, vmcs12);




 exec_control = vmx_pin_based_exec_ctrl(vmx);
 exec_control |= (vmcs12->pin_based_vm_exec_control &
    ~PIN_BASED_VMX_PREEMPTION_TIMER);


 if (nested_cpu_has_posted_intr(vmcs12)) {
  vmx->nested.posted_intr_nv = vmcs12->posted_intr_nv;
  vmx->nested.pi_pending = 0;
 } else {
  exec_control &= ~PIN_BASED_POSTED_INTR;
 }
 pin_controls_set(vmx, exec_control);




 exec_control = vmx_exec_control(vmx);
 exec_control &= ~CPU_BASED_VIRTUAL_INTR_PENDING;
 exec_control &= ~CPU_BASED_VIRTUAL_NMI_PENDING;
 exec_control &= ~CPU_BASED_TPR_SHADOW;
 exec_control |= vmcs12->cpu_based_vm_exec_control;

 if (exec_control & CPU_BASED_TPR_SHADOW)
  vmcs_write32(TPR_THRESHOLD, vmcs12->tpr_threshold);
 exec_control |= CPU_BASED_UNCOND_IO_EXITING;
 exec_control &= ~CPU_BASED_USE_IO_BITMAPS;







 exec_control &= ~CPU_BASED_USE_MSR_BITMAPS;
 exec_control |= exec_controls_get(vmx) & CPU_BASED_USE_MSR_BITMAPS;

 exec_controls_set(vmx, exec_control);




 if (cpu_has_secondary_exec_ctrls()) {
  exec_control = vmx->secondary_exec_control;


  exec_control &= ~(SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES |
      SECONDARY_EXEC_ENABLE_INVPCID |
      SECONDARY_EXEC_RDTSCP |
      SECONDARY_EXEC_XSAVES |
      SECONDARY_EXEC_ENABLE_USR_WAIT_PAUSE |
      SECONDARY_EXEC_VIRTUAL_INTR_DELIVERY |
      SECONDARY_EXEC_APIC_REGISTER_VIRT |
      SECONDARY_EXEC_ENABLE_VMFUNC);
  if (nested_cpu_has(vmcs12,
       CPU_BASED_ACTIVATE_SECONDARY_CONTROLS)) {
   vmcs12_exec_ctrl = vmcs12->secondary_vm_exec_control &
    ~SECONDARY_EXEC_ENABLE_PML;
   exec_control |= vmcs12_exec_ctrl;
  }


  exec_control &= ~SECONDARY_EXEC_SHADOW_VMCS;





  if (!boot_cpu_has(X86_FEATURE_UMIP) && vmx_umip_emulated() &&
      (vmcs12->guest_cr4 & X86_CR4_UMIP))
   exec_control |= SECONDARY_EXEC_DESC;

  if (exec_control & SECONDARY_EXEC_VIRTUAL_INTR_DELIVERY)
   vmcs_write16(GUEST_INTR_STATUS,
    vmcs12->guest_intr_status);

  secondary_exec_controls_set(vmx, exec_control);
 }
 exec_control = (vmcs12->vm_entry_controls | vmx_vmentry_ctrl()) &
   ~VM_ENTRY_IA32E_MODE & ~VM_ENTRY_LOAD_IA32_EFER;
 if (cpu_has_load_ia32_efer()) {
  if (guest_efer & EFER_LMA)
   exec_control |= VM_ENTRY_IA32E_MODE;
  if (guest_efer != host_efer)
   exec_control |= VM_ENTRY_LOAD_IA32_EFER;
 }
 vm_entry_controls_set(vmx, exec_control);
 exec_control = vmx_vmexit_ctrl();
 if (cpu_has_load_ia32_efer() && guest_efer != host_efer)
  exec_control |= VM_EXIT_LOAD_IA32_EFER;
 vm_exit_controls_set(vmx, exec_control);




 if (vmx->nested.nested_run_pending) {
  vmcs_write32(VM_ENTRY_INTR_INFO_FIELD,
        vmcs12->vm_entry_intr_info_field);
  vmcs_write32(VM_ENTRY_EXCEPTION_ERROR_CODE,
        vmcs12->vm_entry_exception_error_code);
  vmcs_write32(VM_ENTRY_INSTRUCTION_LEN,
        vmcs12->vm_entry_instruction_len);
  vmcs_write32(GUEST_INTERRUPTIBILITY_INFO,
        vmcs12->guest_interruptibility_info);
  vmx->loaded_vmcs->nmi_known_unmasked =
   !(vmcs12->guest_interruptibility_info & GUEST_INTR_STATE_NMI);
 } else {
  vmcs_write32(VM_ENTRY_INTR_INFO_FIELD, 0);
 }
}
