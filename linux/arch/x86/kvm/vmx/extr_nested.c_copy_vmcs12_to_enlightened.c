
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmcs12 {int guest_bndcfgs; int guest_rip; int vm_entry_instruction_len; int vm_entry_exception_error_code; int vm_entry_intr_info_field; int vm_entry_controls; int cpu_based_vm_exec_control; int guest_interruptibility_info; int guest_rflags; int guest_rsp; int guest_linear_address; int exit_qualification; int vmx_instruction_info; int vm_exit_instruction_len; int idt_vectoring_error_code; int idt_vectoring_info_field; int vm_exit_intr_error_code; int vm_exit_intr_info; int vm_exit_reason; int vm_instruction_error; int guest_physical_address; int guest_dr7; int guest_cr4; int guest_cr3; int guest_cr0; int guest_sysenter_cs; int guest_activity_state; int guest_sysenter_eip; int guest_sysenter_esp; int guest_pending_dbg_exceptions; int guest_pdptr3; int guest_pdptr2; int guest_pdptr1; int guest_pdptr0; int guest_ia32_efer; int guest_ia32_pat; int guest_idtr_base; int guest_gdtr_base; int guest_tr_base; int guest_ldtr_base; int guest_gs_base; int guest_fs_base; int guest_ds_base; int guest_ss_base; int guest_cs_base; int guest_es_base; int guest_tr_ar_bytes; int guest_ldtr_ar_bytes; int guest_gs_ar_bytes; int guest_fs_ar_bytes; int guest_ds_ar_bytes; int guest_ss_ar_bytes; int guest_cs_ar_bytes; int guest_es_ar_bytes; int guest_idtr_limit; int guest_gdtr_limit; int guest_tr_limit; int guest_ldtr_limit; int guest_gs_limit; int guest_fs_limit; int guest_ds_limit; int guest_ss_limit; int guest_cs_limit; int guest_es_limit; int guest_tr_selector; int guest_ldtr_selector; int guest_gs_selector; int guest_fs_selector; int guest_ds_selector; int guest_ss_selector; int guest_cs_selector; int guest_es_selector; } ;
struct TYPE_2__ {struct hv_enlightened_vmcs* hv_evmcs; struct vmcs12* cached_vmcs12; } ;
struct vcpu_vmx {TYPE_1__ nested; } ;
struct hv_enlightened_vmcs {int guest_bndcfgs; int guest_rip; int vm_entry_instruction_len; int vm_entry_exception_error_code; int vm_entry_intr_info_field; int vm_entry_controls; int cpu_based_vm_exec_control; int guest_interruptibility_info; int guest_rflags; int guest_rsp; int guest_linear_address; int exit_qualification; int vmx_instruction_info; int vm_exit_instruction_len; int idt_vectoring_error_code; int idt_vectoring_info_field; int vm_exit_intr_error_code; int vm_exit_intr_info; int vm_exit_reason; int vm_instruction_error; int guest_physical_address; int guest_dr7; int guest_cr4; int guest_cr3; int guest_cr0; int guest_sysenter_cs; int guest_activity_state; int guest_sysenter_eip; int guest_sysenter_esp; int guest_pending_dbg_exceptions; int guest_pdptr3; int guest_pdptr2; int guest_pdptr1; int guest_pdptr0; int guest_ia32_efer; int guest_ia32_pat; int guest_idtr_base; int guest_gdtr_base; int guest_tr_base; int guest_ldtr_base; int guest_gs_base; int guest_fs_base; int guest_ds_base; int guest_ss_base; int guest_cs_base; int guest_es_base; int guest_tr_ar_bytes; int guest_ldtr_ar_bytes; int guest_gs_ar_bytes; int guest_fs_ar_bytes; int guest_ds_ar_bytes; int guest_ss_ar_bytes; int guest_cs_ar_bytes; int guest_es_ar_bytes; int guest_idtr_limit; int guest_gdtr_limit; int guest_tr_limit; int guest_ldtr_limit; int guest_gs_limit; int guest_fs_limit; int guest_ds_limit; int guest_ss_limit; int guest_cs_limit; int guest_es_limit; int guest_tr_selector; int guest_ldtr_selector; int guest_gs_selector; int guest_fs_selector; int guest_ds_selector; int guest_ss_selector; int guest_cs_selector; int guest_es_selector; } ;



__attribute__((used)) static int copy_vmcs12_to_enlightened(struct vcpu_vmx *vmx)
{
 struct vmcs12 *vmcs12 = vmx->nested.cached_vmcs12;
 struct hv_enlightened_vmcs *evmcs = vmx->nested.hv_evmcs;
 evmcs->guest_es_selector = vmcs12->guest_es_selector;
 evmcs->guest_cs_selector = vmcs12->guest_cs_selector;
 evmcs->guest_ss_selector = vmcs12->guest_ss_selector;
 evmcs->guest_ds_selector = vmcs12->guest_ds_selector;
 evmcs->guest_fs_selector = vmcs12->guest_fs_selector;
 evmcs->guest_gs_selector = vmcs12->guest_gs_selector;
 evmcs->guest_ldtr_selector = vmcs12->guest_ldtr_selector;
 evmcs->guest_tr_selector = vmcs12->guest_tr_selector;

 evmcs->guest_es_limit = vmcs12->guest_es_limit;
 evmcs->guest_cs_limit = vmcs12->guest_cs_limit;
 evmcs->guest_ss_limit = vmcs12->guest_ss_limit;
 evmcs->guest_ds_limit = vmcs12->guest_ds_limit;
 evmcs->guest_fs_limit = vmcs12->guest_fs_limit;
 evmcs->guest_gs_limit = vmcs12->guest_gs_limit;
 evmcs->guest_ldtr_limit = vmcs12->guest_ldtr_limit;
 evmcs->guest_tr_limit = vmcs12->guest_tr_limit;
 evmcs->guest_gdtr_limit = vmcs12->guest_gdtr_limit;
 evmcs->guest_idtr_limit = vmcs12->guest_idtr_limit;

 evmcs->guest_es_ar_bytes = vmcs12->guest_es_ar_bytes;
 evmcs->guest_cs_ar_bytes = vmcs12->guest_cs_ar_bytes;
 evmcs->guest_ss_ar_bytes = vmcs12->guest_ss_ar_bytes;
 evmcs->guest_ds_ar_bytes = vmcs12->guest_ds_ar_bytes;
 evmcs->guest_fs_ar_bytes = vmcs12->guest_fs_ar_bytes;
 evmcs->guest_gs_ar_bytes = vmcs12->guest_gs_ar_bytes;
 evmcs->guest_ldtr_ar_bytes = vmcs12->guest_ldtr_ar_bytes;
 evmcs->guest_tr_ar_bytes = vmcs12->guest_tr_ar_bytes;

 evmcs->guest_es_base = vmcs12->guest_es_base;
 evmcs->guest_cs_base = vmcs12->guest_cs_base;
 evmcs->guest_ss_base = vmcs12->guest_ss_base;
 evmcs->guest_ds_base = vmcs12->guest_ds_base;
 evmcs->guest_fs_base = vmcs12->guest_fs_base;
 evmcs->guest_gs_base = vmcs12->guest_gs_base;
 evmcs->guest_ldtr_base = vmcs12->guest_ldtr_base;
 evmcs->guest_tr_base = vmcs12->guest_tr_base;
 evmcs->guest_gdtr_base = vmcs12->guest_gdtr_base;
 evmcs->guest_idtr_base = vmcs12->guest_idtr_base;

 evmcs->guest_ia32_pat = vmcs12->guest_ia32_pat;
 evmcs->guest_ia32_efer = vmcs12->guest_ia32_efer;

 evmcs->guest_pdptr0 = vmcs12->guest_pdptr0;
 evmcs->guest_pdptr1 = vmcs12->guest_pdptr1;
 evmcs->guest_pdptr2 = vmcs12->guest_pdptr2;
 evmcs->guest_pdptr3 = vmcs12->guest_pdptr3;

 evmcs->guest_pending_dbg_exceptions =
  vmcs12->guest_pending_dbg_exceptions;
 evmcs->guest_sysenter_esp = vmcs12->guest_sysenter_esp;
 evmcs->guest_sysenter_eip = vmcs12->guest_sysenter_eip;

 evmcs->guest_activity_state = vmcs12->guest_activity_state;
 evmcs->guest_sysenter_cs = vmcs12->guest_sysenter_cs;

 evmcs->guest_cr0 = vmcs12->guest_cr0;
 evmcs->guest_cr3 = vmcs12->guest_cr3;
 evmcs->guest_cr4 = vmcs12->guest_cr4;
 evmcs->guest_dr7 = vmcs12->guest_dr7;

 evmcs->guest_physical_address = vmcs12->guest_physical_address;

 evmcs->vm_instruction_error = vmcs12->vm_instruction_error;
 evmcs->vm_exit_reason = vmcs12->vm_exit_reason;
 evmcs->vm_exit_intr_info = vmcs12->vm_exit_intr_info;
 evmcs->vm_exit_intr_error_code = vmcs12->vm_exit_intr_error_code;
 evmcs->idt_vectoring_info_field = vmcs12->idt_vectoring_info_field;
 evmcs->idt_vectoring_error_code = vmcs12->idt_vectoring_error_code;
 evmcs->vm_exit_instruction_len = vmcs12->vm_exit_instruction_len;
 evmcs->vmx_instruction_info = vmcs12->vmx_instruction_info;

 evmcs->exit_qualification = vmcs12->exit_qualification;

 evmcs->guest_linear_address = vmcs12->guest_linear_address;
 evmcs->guest_rsp = vmcs12->guest_rsp;
 evmcs->guest_rflags = vmcs12->guest_rflags;

 evmcs->guest_interruptibility_info =
  vmcs12->guest_interruptibility_info;
 evmcs->cpu_based_vm_exec_control = vmcs12->cpu_based_vm_exec_control;
 evmcs->vm_entry_controls = vmcs12->vm_entry_controls;
 evmcs->vm_entry_intr_info_field = vmcs12->vm_entry_intr_info_field;
 evmcs->vm_entry_exception_error_code =
  vmcs12->vm_entry_exception_error_code;
 evmcs->vm_entry_instruction_len = vmcs12->vm_entry_instruction_len;

 evmcs->guest_rip = vmcs12->guest_rip;

 evmcs->guest_bndcfgs = vmcs12->guest_bndcfgs;

 return 0;
}
