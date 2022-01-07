
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vmcs12 {int vm_entry_controls; int eoi_exit_bitmap3; int eoi_exit_bitmap2; int eoi_exit_bitmap1; int eoi_exit_bitmap0; int page_fault_error_code_match; int page_fault_error_code_mask; int xss_exit_bitmap; int guest_bndcfgs; int guest_pdptr3; int guest_pdptr2; int guest_pdptr1; int guest_pdptr0; int guest_sysenter_eip; int guest_sysenter_esp; int guest_pending_dbg_exceptions; int guest_sysenter_cs; int guest_idtr_base; int guest_gdtr_base; int guest_tr_base; int guest_ldtr_base; int guest_gs_base; int guest_fs_base; int guest_ds_base; int guest_ss_base; int guest_cs_base; int guest_es_base; int guest_tr_ar_bytes; int guest_ldtr_ar_bytes; int guest_gs_ar_bytes; int guest_fs_ar_bytes; int guest_ds_ar_bytes; int guest_es_ar_bytes; int guest_ss_ar_bytes; int guest_cs_ar_bytes; int guest_idtr_limit; int guest_gdtr_limit; int guest_tr_limit; int guest_ldtr_limit; int guest_gs_limit; int guest_fs_limit; int guest_ds_limit; int guest_ss_limit; int guest_cs_limit; int guest_es_limit; int guest_tr_selector; int guest_ldtr_selector; int guest_gs_selector; int guest_fs_selector; int guest_ds_selector; int guest_ss_selector; int guest_cs_selector; int guest_es_selector; } ;
struct TYPE_7__ {int nr; } ;
struct TYPE_6__ {int nr; } ;
struct TYPE_8__ {TYPE_3__ guest; TYPE_2__ host; } ;
struct TYPE_5__ {scalar_t__ nested_run_pending; struct hv_enlightened_vmcs* hv_evmcs; } ;
struct vcpu_vmx {TYPE_4__ msr_autoload; TYPE_1__ nested; } ;
struct hv_enlightened_vmcs {int hv_clean_fields; } ;


 int EOI_EXIT_BITMAP0 ;
 int EOI_EXIT_BITMAP1 ;
 int EOI_EXIT_BITMAP2 ;
 int EOI_EXIT_BITMAP3 ;
 int GUEST_BNDCFGS ;
 int GUEST_CS_AR_BYTES ;
 int GUEST_CS_BASE ;
 int GUEST_CS_LIMIT ;
 int GUEST_CS_SELECTOR ;
 int GUEST_DS_AR_BYTES ;
 int GUEST_DS_BASE ;
 int GUEST_DS_LIMIT ;
 int GUEST_DS_SELECTOR ;
 int GUEST_ES_AR_BYTES ;
 int GUEST_ES_BASE ;
 int GUEST_ES_LIMIT ;
 int GUEST_ES_SELECTOR ;
 int GUEST_FS_AR_BYTES ;
 int GUEST_FS_BASE ;
 int GUEST_FS_LIMIT ;
 int GUEST_FS_SELECTOR ;
 int GUEST_GDTR_BASE ;
 int GUEST_GDTR_LIMIT ;
 int GUEST_GS_AR_BYTES ;
 int GUEST_GS_BASE ;
 int GUEST_GS_LIMIT ;
 int GUEST_GS_SELECTOR ;
 int GUEST_IDTR_BASE ;
 int GUEST_IDTR_LIMIT ;
 int GUEST_LDTR_AR_BYTES ;
 int GUEST_LDTR_BASE ;
 int GUEST_LDTR_LIMIT ;
 int GUEST_LDTR_SELECTOR ;
 int GUEST_PDPTR0 ;
 int GUEST_PDPTR1 ;
 int GUEST_PDPTR2 ;
 int GUEST_PDPTR3 ;
 int GUEST_PENDING_DBG_EXCEPTIONS ;
 int GUEST_SS_AR_BYTES ;
 int GUEST_SS_BASE ;
 int GUEST_SS_LIMIT ;
 int GUEST_SS_SELECTOR ;
 int GUEST_SYSENTER_CS ;
 int GUEST_SYSENTER_EIP ;
 int GUEST_SYSENTER_ESP ;
 int GUEST_TR_AR_BYTES ;
 int GUEST_TR_BASE ;
 int GUEST_TR_LIMIT ;
 int GUEST_TR_SELECTOR ;
 int HV_VMX_ENLIGHTENED_CLEAN_FIELD_GUEST_GRP1 ;
 int HV_VMX_ENLIGHTENED_CLEAN_FIELD_GUEST_GRP2 ;
 int PAGE_FAULT_ERROR_CODE_MASK ;
 int PAGE_FAULT_ERROR_CODE_MATCH ;
 int VM_ENTRY_LOAD_BNDCFGS ;
 int VM_ENTRY_MSR_LOAD_COUNT ;
 int VM_EXIT_MSR_LOAD_COUNT ;
 int XSS_EXIT_BITMAP ;
 scalar_t__ cpu_has_vmx_apicv () ;
 scalar_t__ enable_ept ;
 scalar_t__ kvm_mpx_supported () ;
 scalar_t__ nested_cpu_has_xsaves (struct vmcs12*) ;
 int set_cr4_guest_host_mask (struct vcpu_vmx*) ;
 int vmcs_write16 (int ,int ) ;
 int vmcs_write32 (int ,int ) ;
 int vmcs_write64 (int ,int ) ;
 int vmcs_writel (int ,int ) ;

__attribute__((used)) static void prepare_vmcs02_rare(struct vcpu_vmx *vmx, struct vmcs12 *vmcs12)
{
 struct hv_enlightened_vmcs *hv_evmcs = vmx->nested.hv_evmcs;

 if (!hv_evmcs || !(hv_evmcs->hv_clean_fields &
      HV_VMX_ENLIGHTENED_CLEAN_FIELD_GUEST_GRP2)) {
  vmcs_write16(GUEST_ES_SELECTOR, vmcs12->guest_es_selector);
  vmcs_write16(GUEST_CS_SELECTOR, vmcs12->guest_cs_selector);
  vmcs_write16(GUEST_SS_SELECTOR, vmcs12->guest_ss_selector);
  vmcs_write16(GUEST_DS_SELECTOR, vmcs12->guest_ds_selector);
  vmcs_write16(GUEST_FS_SELECTOR, vmcs12->guest_fs_selector);
  vmcs_write16(GUEST_GS_SELECTOR, vmcs12->guest_gs_selector);
  vmcs_write16(GUEST_LDTR_SELECTOR, vmcs12->guest_ldtr_selector);
  vmcs_write16(GUEST_TR_SELECTOR, vmcs12->guest_tr_selector);
  vmcs_write32(GUEST_ES_LIMIT, vmcs12->guest_es_limit);
  vmcs_write32(GUEST_CS_LIMIT, vmcs12->guest_cs_limit);
  vmcs_write32(GUEST_SS_LIMIT, vmcs12->guest_ss_limit);
  vmcs_write32(GUEST_DS_LIMIT, vmcs12->guest_ds_limit);
  vmcs_write32(GUEST_FS_LIMIT, vmcs12->guest_fs_limit);
  vmcs_write32(GUEST_GS_LIMIT, vmcs12->guest_gs_limit);
  vmcs_write32(GUEST_LDTR_LIMIT, vmcs12->guest_ldtr_limit);
  vmcs_write32(GUEST_TR_LIMIT, vmcs12->guest_tr_limit);
  vmcs_write32(GUEST_GDTR_LIMIT, vmcs12->guest_gdtr_limit);
  vmcs_write32(GUEST_IDTR_LIMIT, vmcs12->guest_idtr_limit);
  vmcs_write32(GUEST_CS_AR_BYTES, vmcs12->guest_cs_ar_bytes);
  vmcs_write32(GUEST_SS_AR_BYTES, vmcs12->guest_ss_ar_bytes);
  vmcs_write32(GUEST_ES_AR_BYTES, vmcs12->guest_es_ar_bytes);
  vmcs_write32(GUEST_DS_AR_BYTES, vmcs12->guest_ds_ar_bytes);
  vmcs_write32(GUEST_FS_AR_BYTES, vmcs12->guest_fs_ar_bytes);
  vmcs_write32(GUEST_GS_AR_BYTES, vmcs12->guest_gs_ar_bytes);
  vmcs_write32(GUEST_LDTR_AR_BYTES, vmcs12->guest_ldtr_ar_bytes);
  vmcs_write32(GUEST_TR_AR_BYTES, vmcs12->guest_tr_ar_bytes);
  vmcs_writel(GUEST_ES_BASE, vmcs12->guest_es_base);
  vmcs_writel(GUEST_CS_BASE, vmcs12->guest_cs_base);
  vmcs_writel(GUEST_SS_BASE, vmcs12->guest_ss_base);
  vmcs_writel(GUEST_DS_BASE, vmcs12->guest_ds_base);
  vmcs_writel(GUEST_FS_BASE, vmcs12->guest_fs_base);
  vmcs_writel(GUEST_GS_BASE, vmcs12->guest_gs_base);
  vmcs_writel(GUEST_LDTR_BASE, vmcs12->guest_ldtr_base);
  vmcs_writel(GUEST_TR_BASE, vmcs12->guest_tr_base);
  vmcs_writel(GUEST_GDTR_BASE, vmcs12->guest_gdtr_base);
  vmcs_writel(GUEST_IDTR_BASE, vmcs12->guest_idtr_base);
 }

 if (!hv_evmcs || !(hv_evmcs->hv_clean_fields &
      HV_VMX_ENLIGHTENED_CLEAN_FIELD_GUEST_GRP1)) {
  vmcs_write32(GUEST_SYSENTER_CS, vmcs12->guest_sysenter_cs);
  vmcs_writel(GUEST_PENDING_DBG_EXCEPTIONS,
       vmcs12->guest_pending_dbg_exceptions);
  vmcs_writel(GUEST_SYSENTER_ESP, vmcs12->guest_sysenter_esp);
  vmcs_writel(GUEST_SYSENTER_EIP, vmcs12->guest_sysenter_eip);





  if (enable_ept) {
   vmcs_write64(GUEST_PDPTR0, vmcs12->guest_pdptr0);
   vmcs_write64(GUEST_PDPTR1, vmcs12->guest_pdptr1);
   vmcs_write64(GUEST_PDPTR2, vmcs12->guest_pdptr2);
   vmcs_write64(GUEST_PDPTR3, vmcs12->guest_pdptr3);
  }

  if (kvm_mpx_supported() && vmx->nested.nested_run_pending &&
      (vmcs12->vm_entry_controls & VM_ENTRY_LOAD_BNDCFGS))
   vmcs_write64(GUEST_BNDCFGS, vmcs12->guest_bndcfgs);
 }

 if (nested_cpu_has_xsaves(vmcs12))
  vmcs_write64(XSS_EXIT_BITMAP, vmcs12->xss_exit_bitmap);
 vmcs_write32(PAGE_FAULT_ERROR_CODE_MASK,
  enable_ept ? vmcs12->page_fault_error_code_mask : 0);
 vmcs_write32(PAGE_FAULT_ERROR_CODE_MATCH,
  enable_ept ? vmcs12->page_fault_error_code_match : 0);

 if (cpu_has_vmx_apicv()) {
  vmcs_write64(EOI_EXIT_BITMAP0, vmcs12->eoi_exit_bitmap0);
  vmcs_write64(EOI_EXIT_BITMAP1, vmcs12->eoi_exit_bitmap1);
  vmcs_write64(EOI_EXIT_BITMAP2, vmcs12->eoi_exit_bitmap2);
  vmcs_write64(EOI_EXIT_BITMAP3, vmcs12->eoi_exit_bitmap3);
 }

 vmcs_write32(VM_EXIT_MSR_LOAD_COUNT, vmx->msr_autoload.host.nr);
 vmcs_write32(VM_ENTRY_MSR_LOAD_COUNT, vmx->msr_autoload.guest.nr);

 set_cr4_guest_host_mask(vmx);
}
