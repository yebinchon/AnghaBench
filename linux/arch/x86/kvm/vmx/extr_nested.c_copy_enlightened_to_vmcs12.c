
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmcs12 {int guest_sysenter_cs; int guest_activity_state; int guest_bndcfgs; int guest_sysenter_eip; int guest_sysenter_esp; int guest_pending_dbg_exceptions; int guest_pdptr3; int guest_pdptr2; int guest_pdptr1; int guest_pdptr0; int guest_ia32_efer; int guest_ia32_pat; int guest_ia32_debugctl; int vmcs_link_pointer; int virtual_processor_id; int ept_pointer; int host_rsp; int host_idtr_base; int host_gdtr_base; int host_tr_base; int host_gs_base; int host_fs_base; int guest_dr7; int guest_cr4; int guest_cr3; int guest_cr0; int cr4_read_shadow; int cr0_read_shadow; int cr4_guest_host_mask; int cr0_guest_host_mask; int xss_exit_bitmap; int virtual_apic_page_addr; int tsc_offset; int guest_tr_selector; int guest_ldtr_selector; int guest_gs_selector; int guest_fs_selector; int guest_ds_selector; int guest_ss_selector; int guest_cs_selector; int guest_es_selector; int guest_tr_ar_bytes; int guest_ldtr_ar_bytes; int guest_gs_ar_bytes; int guest_fs_ar_bytes; int guest_ds_ar_bytes; int guest_ss_ar_bytes; int guest_cs_ar_bytes; int guest_es_ar_bytes; int guest_idtr_limit; int guest_gdtr_limit; int guest_tr_limit; int guest_ldtr_limit; int guest_gs_limit; int guest_fs_limit; int guest_ds_limit; int guest_ss_limit; int guest_cs_limit; int guest_es_limit; int guest_idtr_base; int guest_gdtr_base; int guest_tr_base; int guest_ldtr_base; int guest_gs_base; int guest_fs_base; int guest_ds_base; int guest_ss_base; int guest_cs_base; int guest_es_base; int msr_bitmap; int io_bitmap_b; int io_bitmap_a; int secondary_vm_exec_control; int vm_exit_controls; int pin_based_vm_exec_control; int host_tr_selector; int host_gs_selector; int host_fs_selector; int host_ds_selector; int host_ss_selector; int host_cs_selector; int host_es_selector; int host_ia32_sysenter_cs; int host_rip; int host_ia32_sysenter_eip; int host_ia32_sysenter_esp; int host_cr4; int host_cr3; int host_cr0; int host_ia32_efer; int host_ia32_pat; int vm_entry_instruction_len; int vm_entry_exception_error_code; int vm_entry_intr_info_field; int vm_entry_controls; int exception_bitmap; int cpu_based_vm_exec_control; int guest_interruptibility_info; int guest_rflags; int guest_rsp; int guest_rip; int tpr_threshold; } ;
struct TYPE_2__ {struct hv_enlightened_vmcs* hv_evmcs; struct vmcs12* cached_vmcs12; } ;
struct vcpu_vmx {TYPE_1__ nested; } ;
struct hv_enlightened_vmcs {int hv_clean_fields; int guest_sysenter_cs; int guest_activity_state; int guest_bndcfgs; int guest_sysenter_eip; int guest_sysenter_esp; int guest_pending_dbg_exceptions; int guest_pdptr3; int guest_pdptr2; int guest_pdptr1; int guest_pdptr0; int guest_ia32_efer; int guest_ia32_pat; int guest_ia32_debugctl; int vmcs_link_pointer; int virtual_processor_id; int ept_pointer; int host_rsp; int host_idtr_base; int host_gdtr_base; int host_tr_base; int host_gs_base; int host_fs_base; int guest_dr7; int guest_cr4; int guest_cr3; int guest_cr0; int cr4_read_shadow; int cr0_read_shadow; int cr4_guest_host_mask; int cr0_guest_host_mask; int xss_exit_bitmap; int virtual_apic_page_addr; int tsc_offset; int guest_tr_selector; int guest_ldtr_selector; int guest_gs_selector; int guest_fs_selector; int guest_ds_selector; int guest_ss_selector; int guest_cs_selector; int guest_es_selector; int guest_tr_ar_bytes; int guest_ldtr_ar_bytes; int guest_gs_ar_bytes; int guest_fs_ar_bytes; int guest_ds_ar_bytes; int guest_ss_ar_bytes; int guest_cs_ar_bytes; int guest_es_ar_bytes; int guest_idtr_limit; int guest_gdtr_limit; int guest_tr_limit; int guest_ldtr_limit; int guest_gs_limit; int guest_fs_limit; int guest_ds_limit; int guest_ss_limit; int guest_cs_limit; int guest_es_limit; int guest_idtr_base; int guest_gdtr_base; int guest_tr_base; int guest_ldtr_base; int guest_gs_base; int guest_fs_base; int guest_ds_base; int guest_ss_base; int guest_cs_base; int guest_es_base; int msr_bitmap; int io_bitmap_b; int io_bitmap_a; int secondary_vm_exec_control; int vm_exit_controls; int pin_based_vm_exec_control; int host_tr_selector; int host_gs_selector; int host_fs_selector; int host_ds_selector; int host_ss_selector; int host_cs_selector; int host_es_selector; int host_ia32_sysenter_cs; int host_rip; int host_ia32_sysenter_eip; int host_ia32_sysenter_esp; int host_cr4; int host_cr3; int host_cr0; int host_ia32_efer; int host_ia32_pat; int vm_entry_instruction_len; int vm_entry_exception_error_code; int vm_entry_intr_info_field; int vm_entry_controls; int exception_bitmap; int cpu_based_vm_exec_control; int guest_interruptibility_info; int guest_rflags; int guest_rsp; int guest_rip; int tpr_threshold; } ;


 int HV_VMX_ENLIGHTENED_CLEAN_FIELD_CONTROL_ENTRY ;
 int HV_VMX_ENLIGHTENED_CLEAN_FIELD_CONTROL_EVENT ;
 int HV_VMX_ENLIGHTENED_CLEAN_FIELD_CONTROL_EXCPN ;
 int HV_VMX_ENLIGHTENED_CLEAN_FIELD_CONTROL_GRP1 ;
 int HV_VMX_ENLIGHTENED_CLEAN_FIELD_CONTROL_GRP2 ;
 int HV_VMX_ENLIGHTENED_CLEAN_FIELD_CONTROL_PROC ;
 int HV_VMX_ENLIGHTENED_CLEAN_FIELD_CONTROL_XLAT ;
 int HV_VMX_ENLIGHTENED_CLEAN_FIELD_CRDR ;
 int HV_VMX_ENLIGHTENED_CLEAN_FIELD_GUEST_BASIC ;
 int HV_VMX_ENLIGHTENED_CLEAN_FIELD_GUEST_GRP1 ;
 int HV_VMX_ENLIGHTENED_CLEAN_FIELD_GUEST_GRP2 ;
 int HV_VMX_ENLIGHTENED_CLEAN_FIELD_HOST_GRP1 ;
 int HV_VMX_ENLIGHTENED_CLEAN_FIELD_HOST_POINTER ;
 int HV_VMX_ENLIGHTENED_CLEAN_FIELD_IO_BITMAP ;
 int HV_VMX_ENLIGHTENED_CLEAN_FIELD_MSR_BITMAP ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int copy_enlightened_to_vmcs12(struct vcpu_vmx *vmx)
{
 struct vmcs12 *vmcs12 = vmx->nested.cached_vmcs12;
 struct hv_enlightened_vmcs *evmcs = vmx->nested.hv_evmcs;


 vmcs12->tpr_threshold = evmcs->tpr_threshold;
 vmcs12->guest_rip = evmcs->guest_rip;

 if (unlikely(!(evmcs->hv_clean_fields &
         HV_VMX_ENLIGHTENED_CLEAN_FIELD_GUEST_BASIC))) {
  vmcs12->guest_rsp = evmcs->guest_rsp;
  vmcs12->guest_rflags = evmcs->guest_rflags;
  vmcs12->guest_interruptibility_info =
   evmcs->guest_interruptibility_info;
 }

 if (unlikely(!(evmcs->hv_clean_fields &
         HV_VMX_ENLIGHTENED_CLEAN_FIELD_CONTROL_PROC))) {
  vmcs12->cpu_based_vm_exec_control =
   evmcs->cpu_based_vm_exec_control;
 }

 if (unlikely(!(evmcs->hv_clean_fields &
         HV_VMX_ENLIGHTENED_CLEAN_FIELD_CONTROL_EXCPN))) {
  vmcs12->exception_bitmap = evmcs->exception_bitmap;
 }

 if (unlikely(!(evmcs->hv_clean_fields &
         HV_VMX_ENLIGHTENED_CLEAN_FIELD_CONTROL_ENTRY))) {
  vmcs12->vm_entry_controls = evmcs->vm_entry_controls;
 }

 if (unlikely(!(evmcs->hv_clean_fields &
         HV_VMX_ENLIGHTENED_CLEAN_FIELD_CONTROL_EVENT))) {
  vmcs12->vm_entry_intr_info_field =
   evmcs->vm_entry_intr_info_field;
  vmcs12->vm_entry_exception_error_code =
   evmcs->vm_entry_exception_error_code;
  vmcs12->vm_entry_instruction_len =
   evmcs->vm_entry_instruction_len;
 }

 if (unlikely(!(evmcs->hv_clean_fields &
         HV_VMX_ENLIGHTENED_CLEAN_FIELD_HOST_GRP1))) {
  vmcs12->host_ia32_pat = evmcs->host_ia32_pat;
  vmcs12->host_ia32_efer = evmcs->host_ia32_efer;
  vmcs12->host_cr0 = evmcs->host_cr0;
  vmcs12->host_cr3 = evmcs->host_cr3;
  vmcs12->host_cr4 = evmcs->host_cr4;
  vmcs12->host_ia32_sysenter_esp = evmcs->host_ia32_sysenter_esp;
  vmcs12->host_ia32_sysenter_eip = evmcs->host_ia32_sysenter_eip;
  vmcs12->host_rip = evmcs->host_rip;
  vmcs12->host_ia32_sysenter_cs = evmcs->host_ia32_sysenter_cs;
  vmcs12->host_es_selector = evmcs->host_es_selector;
  vmcs12->host_cs_selector = evmcs->host_cs_selector;
  vmcs12->host_ss_selector = evmcs->host_ss_selector;
  vmcs12->host_ds_selector = evmcs->host_ds_selector;
  vmcs12->host_fs_selector = evmcs->host_fs_selector;
  vmcs12->host_gs_selector = evmcs->host_gs_selector;
  vmcs12->host_tr_selector = evmcs->host_tr_selector;
 }

 if (unlikely(!(evmcs->hv_clean_fields &
         HV_VMX_ENLIGHTENED_CLEAN_FIELD_CONTROL_GRP1))) {
  vmcs12->pin_based_vm_exec_control =
   evmcs->pin_based_vm_exec_control;
  vmcs12->vm_exit_controls = evmcs->vm_exit_controls;
  vmcs12->secondary_vm_exec_control =
   evmcs->secondary_vm_exec_control;
 }

 if (unlikely(!(evmcs->hv_clean_fields &
         HV_VMX_ENLIGHTENED_CLEAN_FIELD_IO_BITMAP))) {
  vmcs12->io_bitmap_a = evmcs->io_bitmap_a;
  vmcs12->io_bitmap_b = evmcs->io_bitmap_b;
 }

 if (unlikely(!(evmcs->hv_clean_fields &
         HV_VMX_ENLIGHTENED_CLEAN_FIELD_MSR_BITMAP))) {
  vmcs12->msr_bitmap = evmcs->msr_bitmap;
 }

 if (unlikely(!(evmcs->hv_clean_fields &
         HV_VMX_ENLIGHTENED_CLEAN_FIELD_GUEST_GRP2))) {
  vmcs12->guest_es_base = evmcs->guest_es_base;
  vmcs12->guest_cs_base = evmcs->guest_cs_base;
  vmcs12->guest_ss_base = evmcs->guest_ss_base;
  vmcs12->guest_ds_base = evmcs->guest_ds_base;
  vmcs12->guest_fs_base = evmcs->guest_fs_base;
  vmcs12->guest_gs_base = evmcs->guest_gs_base;
  vmcs12->guest_ldtr_base = evmcs->guest_ldtr_base;
  vmcs12->guest_tr_base = evmcs->guest_tr_base;
  vmcs12->guest_gdtr_base = evmcs->guest_gdtr_base;
  vmcs12->guest_idtr_base = evmcs->guest_idtr_base;
  vmcs12->guest_es_limit = evmcs->guest_es_limit;
  vmcs12->guest_cs_limit = evmcs->guest_cs_limit;
  vmcs12->guest_ss_limit = evmcs->guest_ss_limit;
  vmcs12->guest_ds_limit = evmcs->guest_ds_limit;
  vmcs12->guest_fs_limit = evmcs->guest_fs_limit;
  vmcs12->guest_gs_limit = evmcs->guest_gs_limit;
  vmcs12->guest_ldtr_limit = evmcs->guest_ldtr_limit;
  vmcs12->guest_tr_limit = evmcs->guest_tr_limit;
  vmcs12->guest_gdtr_limit = evmcs->guest_gdtr_limit;
  vmcs12->guest_idtr_limit = evmcs->guest_idtr_limit;
  vmcs12->guest_es_ar_bytes = evmcs->guest_es_ar_bytes;
  vmcs12->guest_cs_ar_bytes = evmcs->guest_cs_ar_bytes;
  vmcs12->guest_ss_ar_bytes = evmcs->guest_ss_ar_bytes;
  vmcs12->guest_ds_ar_bytes = evmcs->guest_ds_ar_bytes;
  vmcs12->guest_fs_ar_bytes = evmcs->guest_fs_ar_bytes;
  vmcs12->guest_gs_ar_bytes = evmcs->guest_gs_ar_bytes;
  vmcs12->guest_ldtr_ar_bytes = evmcs->guest_ldtr_ar_bytes;
  vmcs12->guest_tr_ar_bytes = evmcs->guest_tr_ar_bytes;
  vmcs12->guest_es_selector = evmcs->guest_es_selector;
  vmcs12->guest_cs_selector = evmcs->guest_cs_selector;
  vmcs12->guest_ss_selector = evmcs->guest_ss_selector;
  vmcs12->guest_ds_selector = evmcs->guest_ds_selector;
  vmcs12->guest_fs_selector = evmcs->guest_fs_selector;
  vmcs12->guest_gs_selector = evmcs->guest_gs_selector;
  vmcs12->guest_ldtr_selector = evmcs->guest_ldtr_selector;
  vmcs12->guest_tr_selector = evmcs->guest_tr_selector;
 }

 if (unlikely(!(evmcs->hv_clean_fields &
         HV_VMX_ENLIGHTENED_CLEAN_FIELD_CONTROL_GRP2))) {
  vmcs12->tsc_offset = evmcs->tsc_offset;
  vmcs12->virtual_apic_page_addr = evmcs->virtual_apic_page_addr;
  vmcs12->xss_exit_bitmap = evmcs->xss_exit_bitmap;
 }

 if (unlikely(!(evmcs->hv_clean_fields &
         HV_VMX_ENLIGHTENED_CLEAN_FIELD_CRDR))) {
  vmcs12->cr0_guest_host_mask = evmcs->cr0_guest_host_mask;
  vmcs12->cr4_guest_host_mask = evmcs->cr4_guest_host_mask;
  vmcs12->cr0_read_shadow = evmcs->cr0_read_shadow;
  vmcs12->cr4_read_shadow = evmcs->cr4_read_shadow;
  vmcs12->guest_cr0 = evmcs->guest_cr0;
  vmcs12->guest_cr3 = evmcs->guest_cr3;
  vmcs12->guest_cr4 = evmcs->guest_cr4;
  vmcs12->guest_dr7 = evmcs->guest_dr7;
 }

 if (unlikely(!(evmcs->hv_clean_fields &
         HV_VMX_ENLIGHTENED_CLEAN_FIELD_HOST_POINTER))) {
  vmcs12->host_fs_base = evmcs->host_fs_base;
  vmcs12->host_gs_base = evmcs->host_gs_base;
  vmcs12->host_tr_base = evmcs->host_tr_base;
  vmcs12->host_gdtr_base = evmcs->host_gdtr_base;
  vmcs12->host_idtr_base = evmcs->host_idtr_base;
  vmcs12->host_rsp = evmcs->host_rsp;
 }

 if (unlikely(!(evmcs->hv_clean_fields &
         HV_VMX_ENLIGHTENED_CLEAN_FIELD_CONTROL_XLAT))) {
  vmcs12->ept_pointer = evmcs->ept_pointer;
  vmcs12->virtual_processor_id = evmcs->virtual_processor_id;
 }

 if (unlikely(!(evmcs->hv_clean_fields &
         HV_VMX_ENLIGHTENED_CLEAN_FIELD_GUEST_GRP1))) {
  vmcs12->vmcs_link_pointer = evmcs->vmcs_link_pointer;
  vmcs12->guest_ia32_debugctl = evmcs->guest_ia32_debugctl;
  vmcs12->guest_ia32_pat = evmcs->guest_ia32_pat;
  vmcs12->guest_ia32_efer = evmcs->guest_ia32_efer;
  vmcs12->guest_pdptr0 = evmcs->guest_pdptr0;
  vmcs12->guest_pdptr1 = evmcs->guest_pdptr1;
  vmcs12->guest_pdptr2 = evmcs->guest_pdptr2;
  vmcs12->guest_pdptr3 = evmcs->guest_pdptr3;
  vmcs12->guest_pending_dbg_exceptions =
   evmcs->guest_pending_dbg_exceptions;
  vmcs12->guest_sysenter_esp = evmcs->guest_sysenter_esp;
  vmcs12->guest_sysenter_eip = evmcs->guest_sysenter_eip;
  vmcs12->guest_bndcfgs = evmcs->guest_bndcfgs;
  vmcs12->guest_activity_state = evmcs->guest_activity_state;
  vmcs12->guest_sysenter_cs = evmcs->guest_sysenter_cs;
 }
 return 0;
}
