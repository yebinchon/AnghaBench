
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int u32 ;
struct TYPE_18__ {int output_mask; } ;
struct TYPE_20__ {TYPE_7__ guest; } ;
struct TYPE_17__ {unsigned long long pat; int cr0_guest_owned_bits; } ;
struct TYPE_11__ {TYPE_6__ arch; int kvm; } ;
struct TYPE_14__ {int * val; } ;
struct TYPE_13__ {int * val; } ;
struct TYPE_15__ {TYPE_3__ guest; TYPE_2__ host; } ;
struct TYPE_12__ {int * msr_bitmap; } ;
struct vcpu_vmx {int hv_deadline_tsc; int ple_window_dirty; int nmsrs; TYPE_9__ pt_desc; int pml_pg; TYPE_10__ vcpu; TYPE_5__* guest_msrs; TYPE_4__ msr_autoload; int ple_window; int pi_desc; int secondary_exec_control; TYPE_1__ vmcs01; } ;
struct TYPE_19__ {int vmentry_ctrl; } ;
struct TYPE_16__ {int index; unsigned long long mask; scalar_t__ data; } ;


 int ARRAY_SIZE (int *) ;
 int CR0_GUEST_HOST_MASK ;
 int CR3_TARGET_COUNT ;
 int ENCLS_EXITING_BITMAP ;
 int EOI_EXIT_BITMAP0 ;
 int EOI_EXIT_BITMAP1 ;
 int EOI_EXIT_BITMAP2 ;
 int EOI_EXIT_BITMAP3 ;
 int GUEST_IA32_PAT ;
 int GUEST_IA32_RTIT_CTL ;
 int GUEST_INTR_STATUS ;
 int GUEST_PML_INDEX ;
 int HOST_FS_BASE ;
 int HOST_FS_SELECTOR ;
 int HOST_GS_BASE ;
 int HOST_GS_SELECTOR ;
 int MSR_BITMAP ;
 int PAGE_FAULT_ERROR_CODE_MASK ;
 int PAGE_FAULT_ERROR_CODE_MATCH ;
 int PLE_GAP ;
 int PML_ADDRESS ;
 scalar_t__ PML_ENTITY_NUM ;
 int POSTED_INTR_DESC_ADDR ;
 int POSTED_INTR_NV ;
 scalar_t__ POSTED_INTR_VECTOR ;
 scalar_t__ PT_MODE_HOST_GUEST ;
 int VMCS_LINK_POINTER ;
 unsigned long long VMX_XSS_EXIT_BITMAP ;
 int VM_ENTRY_LOAD_IA32_PAT ;
 int VM_ENTRY_MSR_LOAD_ADDR ;
 int VM_ENTRY_MSR_LOAD_COUNT ;
 int VM_EXIT_MSR_LOAD_ADDR ;
 int VM_EXIT_MSR_LOAD_COUNT ;
 int VM_EXIT_MSR_STORE_COUNT ;
 int VM_FUNCTION_CONTROL ;
 int X86_CR0_TS ;
 int XSS_EXIT_BITMAP ;
 unsigned long long __pa (int *) ;
 scalar_t__ cpu_has_secondary_exec_ctrls () ;
 scalar_t__ cpu_has_vmx_encls_vmexit () ;
 scalar_t__ cpu_has_vmx_msr_bitmap () ;
 scalar_t__ cpu_has_vmx_vmfunc () ;
 scalar_t__ enable_pml ;
 int exec_controls_set (struct vcpu_vmx*,int ) ;
 int kvm_pause_in_guest (int ) ;
 scalar_t__ kvm_vcpu_apicv_active (TYPE_10__*) ;
 int memset (TYPE_9__*,int ,int) ;
 scalar_t__ nested ;
 int nested_vmx_vcpu_setup () ;
 unsigned long long page_to_phys (int ) ;
 int pin_controls_set (struct vcpu_vmx*,int ) ;
 int ple_gap ;
 int ple_window ;
 scalar_t__ pt_mode ;
 scalar_t__ rdmsr_safe (int ,int *,int *) ;
 int secondary_exec_controls_set (struct vcpu_vmx*,int ) ;
 int set_cr4_guest_host_mask (struct vcpu_vmx*) ;
 int vm_entry_controls_set (struct vcpu_vmx*,int ) ;
 int vm_exit_controls_set (struct vcpu_vmx*,int ) ;
 TYPE_8__ vmcs_config ;
 int vmcs_write16 (int ,scalar_t__) ;
 int vmcs_write32 (int ,int ) ;
 int vmcs_write64 (int ,unsigned long long) ;
 int vmcs_writel (int ,int ) ;
 int vmx_compute_secondary_exec_control (struct vcpu_vmx*) ;
 int vmx_exec_control (struct vcpu_vmx*) ;
 int * vmx_msr_index ;
 int vmx_pin_based_exec_ctrl (struct vcpu_vmx*) ;
 int vmx_set_constant_host_state (struct vcpu_vmx*) ;
 int vmx_vmentry_ctrl () ;
 int vmx_vmexit_ctrl () ;
 scalar_t__ vmx_xsaves_supported () ;
 scalar_t__ wrmsr_safe (int ,int ,int ) ;

__attribute__((used)) static void vmx_vcpu_setup(struct vcpu_vmx *vmx)
{
 int i;

 if (nested)
  nested_vmx_vcpu_setup();

 if (cpu_has_vmx_msr_bitmap())
  vmcs_write64(MSR_BITMAP, __pa(vmx->vmcs01.msr_bitmap));

 vmcs_write64(VMCS_LINK_POINTER, -1ull);


 pin_controls_set(vmx, vmx_pin_based_exec_ctrl(vmx));
 vmx->hv_deadline_tsc = -1;

 exec_controls_set(vmx, vmx_exec_control(vmx));

 if (cpu_has_secondary_exec_ctrls()) {
  vmx_compute_secondary_exec_control(vmx);
  secondary_exec_controls_set(vmx, vmx->secondary_exec_control);
 }

 if (kvm_vcpu_apicv_active(&vmx->vcpu)) {
  vmcs_write64(EOI_EXIT_BITMAP0, 0);
  vmcs_write64(EOI_EXIT_BITMAP1, 0);
  vmcs_write64(EOI_EXIT_BITMAP2, 0);
  vmcs_write64(EOI_EXIT_BITMAP3, 0);

  vmcs_write16(GUEST_INTR_STATUS, 0);

  vmcs_write16(POSTED_INTR_NV, POSTED_INTR_VECTOR);
  vmcs_write64(POSTED_INTR_DESC_ADDR, __pa((&vmx->pi_desc)));
 }

 if (!kvm_pause_in_guest(vmx->vcpu.kvm)) {
  vmcs_write32(PLE_GAP, ple_gap);
  vmx->ple_window = ple_window;
  vmx->ple_window_dirty = 1;
 }

 vmcs_write32(PAGE_FAULT_ERROR_CODE_MASK, 0);
 vmcs_write32(PAGE_FAULT_ERROR_CODE_MATCH, 0);
 vmcs_write32(CR3_TARGET_COUNT, 0);

 vmcs_write16(HOST_FS_SELECTOR, 0);
 vmcs_write16(HOST_GS_SELECTOR, 0);
 vmx_set_constant_host_state(vmx);
 vmcs_writel(HOST_FS_BASE, 0);
 vmcs_writel(HOST_GS_BASE, 0);

 if (cpu_has_vmx_vmfunc())
  vmcs_write64(VM_FUNCTION_CONTROL, 0);

 vmcs_write32(VM_EXIT_MSR_STORE_COUNT, 0);
 vmcs_write32(VM_EXIT_MSR_LOAD_COUNT, 0);
 vmcs_write64(VM_EXIT_MSR_LOAD_ADDR, __pa(vmx->msr_autoload.host.val));
 vmcs_write32(VM_ENTRY_MSR_LOAD_COUNT, 0);
 vmcs_write64(VM_ENTRY_MSR_LOAD_ADDR, __pa(vmx->msr_autoload.guest.val));

 if (vmcs_config.vmentry_ctrl & VM_ENTRY_LOAD_IA32_PAT)
  vmcs_write64(GUEST_IA32_PAT, vmx->vcpu.arch.pat);

 for (i = 0; i < ARRAY_SIZE(vmx_msr_index); ++i) {
  u32 index = vmx_msr_index[i];
  u32 data_low, data_high;
  int j = vmx->nmsrs;

  if (rdmsr_safe(index, &data_low, &data_high) < 0)
   continue;
  if (wrmsr_safe(index, data_low, data_high) < 0)
   continue;
  vmx->guest_msrs[j].index = i;
  vmx->guest_msrs[j].data = 0;
  vmx->guest_msrs[j].mask = -1ull;
  ++vmx->nmsrs;
 }

 vm_exit_controls_set(vmx, vmx_vmexit_ctrl());


 vm_entry_controls_set(vmx, vmx_vmentry_ctrl());

 vmx->vcpu.arch.cr0_guest_owned_bits = X86_CR0_TS;
 vmcs_writel(CR0_GUEST_HOST_MASK, ~X86_CR0_TS);

 set_cr4_guest_host_mask(vmx);

 if (vmx_xsaves_supported())
  vmcs_write64(XSS_EXIT_BITMAP, VMX_XSS_EXIT_BITMAP);

 if (enable_pml) {
  vmcs_write64(PML_ADDRESS, page_to_phys(vmx->pml_pg));
  vmcs_write16(GUEST_PML_INDEX, PML_ENTITY_NUM - 1);
 }

 if (cpu_has_vmx_encls_vmexit())
  vmcs_write64(ENCLS_EXITING_BITMAP, -1ull);

 if (pt_mode == PT_MODE_HOST_GUEST) {
  memset(&vmx->pt_desc, 0, sizeof(vmx->pt_desc));

  vmx->pt_desc.guest.output_mask = 0x7F;
  vmcs_write64(GUEST_IA32_RTIT_CTL, 0);
 }
}
