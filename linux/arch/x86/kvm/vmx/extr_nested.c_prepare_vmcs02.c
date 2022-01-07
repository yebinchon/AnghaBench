
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct vmcs12 {int vm_entry_controls; scalar_t__ virtual_processor_id; int guest_rip; int guest_rsp; int guest_pdptr3; int guest_pdptr2; int guest_pdptr1; int guest_pdptr0; int guest_cr3; int guest_cr4; int guest_cr0; int guest_ia32_pat; int cr0_guest_host_mask; int guest_rflags; int guest_ia32_debugctl; int guest_dr7; } ;
struct TYPE_9__ {int dirty_vmcs12; scalar_t__ last_vpid; scalar_t__ nested_run_pending; int vmcs01_guest_bndcfgs; int vmcs01_debugctl; struct hv_enlightened_vmcs* hv_evmcs; } ;
struct TYPE_7__ {int pat; } ;
struct TYPE_8__ {TYPE_1__ arch; } ;
struct vcpu_vmx {scalar_t__ emulation_required; TYPE_3__ nested; TYPE_2__ vcpu; } ;
struct TYPE_11__ {TYPE_4__* walk_mmu; int efer; int tsc_offset; int pat; int cr0_guest_owned_bits; int dr7; } ;
struct kvm_vcpu {TYPE_5__ arch; } ;
struct hv_enlightened_vmcs {int hv_clean_fields; } ;
struct TYPE_12__ {int vmentry_ctrl; } ;
struct TYPE_10__ {int inject_page_fault; } ;


 int CR0_GUEST_HOST_MASK ;
 int CR0_READ_SHADOW ;
 int CR4_READ_SHADOW ;
 int EINVAL ;
 int ENTRY_FAIL_DEFAULT ;
 int GUEST_BNDCFGS ;
 int GUEST_IA32_DEBUGCTL ;
 int GUEST_IA32_PAT ;
 int GUEST_PDPTR0 ;
 int GUEST_PDPTR1 ;
 int GUEST_PDPTR2 ;
 int GUEST_PDPTR3 ;
 int HV_VMX_ENLIGHTENED_CLEAN_FIELD_GUEST_GRP1 ;
 int KVM_REQ_TLB_FLUSH ;
 int SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES ;
 int TSC_OFFSET ;
 int VM_ENTRY_LOAD_BNDCFGS ;
 int VM_ENTRY_LOAD_DEBUG_CONTROLS ;
 int VM_ENTRY_LOAD_IA32_PAT ;
 int __vmx_flush_tlb (struct kvm_vcpu*,int ,int) ;
 int decache_tsc_multiplier (struct vcpu_vmx*) ;
 int enable_ept ;
 scalar_t__ enable_vpid ;
 scalar_t__ is_pae_paging (struct kvm_vcpu*) ;
 scalar_t__ kvm_has_tsc_control ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 scalar_t__ kvm_mpx_supported () ;
 int kvm_rip_write (struct kvm_vcpu*,int ) ;
 int kvm_rsp_write (struct kvm_vcpu*,int ) ;
 int kvm_set_dr (struct kvm_vcpu*,int,int ) ;
 scalar_t__ nested_cpu_has2 (struct vmcs12*,int ) ;
 scalar_t__ nested_cpu_has_ept (struct vmcs12*) ;
 scalar_t__ nested_cpu_has_vpid (struct vmcs12*) ;
 int nested_ept_init_mmu_context (struct kvm_vcpu*) ;
 int nested_get_vpid02 (struct kvm_vcpu*) ;
 scalar_t__ nested_has_guest_tlb_tag (struct kvm_vcpu*) ;
 int nested_read_cr0 (struct vmcs12*) ;
 int nested_read_cr4 (struct vmcs12*) ;
 int nested_vmx_calc_efer (struct vcpu_vmx*,struct vmcs12*) ;
 scalar_t__ nested_vmx_load_cr3 (struct kvm_vcpu*,int ,scalar_t__,int *) ;
 int prepare_vmcs02_rare (struct vcpu_vmx*,struct vmcs12*) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int update_exception_bitmap (struct kvm_vcpu*) ;
 TYPE_6__ vmcs_config ;
 int vmcs_write64 (int ,int ) ;
 int vmcs_writel (int ,int ) ;
 int vmx_flush_tlb (struct kvm_vcpu*,int) ;
 int vmx_inject_page_fault_nested ;
 int vmx_set_cr0 (struct kvm_vcpu*,int ) ;
 int vmx_set_cr4 (struct kvm_vcpu*,int ) ;
 int vmx_set_efer (struct kvm_vcpu*,int ) ;
 int vmx_set_rflags (struct kvm_vcpu*,int ) ;

__attribute__((used)) static int prepare_vmcs02(struct kvm_vcpu *vcpu, struct vmcs12 *vmcs12,
     u32 *entry_failure_code)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 struct hv_enlightened_vmcs *hv_evmcs = vmx->nested.hv_evmcs;
 bool load_guest_pdptrs_vmcs12 = 0;

 if (vmx->nested.dirty_vmcs12 || hv_evmcs) {
  prepare_vmcs02_rare(vmx, vmcs12);
  vmx->nested.dirty_vmcs12 = 0;

  load_guest_pdptrs_vmcs12 = !hv_evmcs ||
   !(hv_evmcs->hv_clean_fields &
     HV_VMX_ENLIGHTENED_CLEAN_FIELD_GUEST_GRP1);
 }

 if (vmx->nested.nested_run_pending &&
     (vmcs12->vm_entry_controls & VM_ENTRY_LOAD_DEBUG_CONTROLS)) {
  kvm_set_dr(vcpu, 7, vmcs12->guest_dr7);
  vmcs_write64(GUEST_IA32_DEBUGCTL, vmcs12->guest_ia32_debugctl);
 } else {
  kvm_set_dr(vcpu, 7, vcpu->arch.dr7);
  vmcs_write64(GUEST_IA32_DEBUGCTL, vmx->nested.vmcs01_debugctl);
 }
 if (kvm_mpx_supported() && (!vmx->nested.nested_run_pending ||
     !(vmcs12->vm_entry_controls & VM_ENTRY_LOAD_BNDCFGS)))
  vmcs_write64(GUEST_BNDCFGS, vmx->nested.vmcs01_guest_bndcfgs);
 vmx_set_rflags(vcpu, vmcs12->guest_rflags);





 update_exception_bitmap(vcpu);
 vcpu->arch.cr0_guest_owned_bits &= ~vmcs12->cr0_guest_host_mask;
 vmcs_writel(CR0_GUEST_HOST_MASK, ~vcpu->arch.cr0_guest_owned_bits);

 if (vmx->nested.nested_run_pending &&
     (vmcs12->vm_entry_controls & VM_ENTRY_LOAD_IA32_PAT)) {
  vmcs_write64(GUEST_IA32_PAT, vmcs12->guest_ia32_pat);
  vcpu->arch.pat = vmcs12->guest_ia32_pat;
 } else if (vmcs_config.vmentry_ctrl & VM_ENTRY_LOAD_IA32_PAT) {
  vmcs_write64(GUEST_IA32_PAT, vmx->vcpu.arch.pat);
 }

 vmcs_write64(TSC_OFFSET, vcpu->arch.tsc_offset);

 if (kvm_has_tsc_control)
  decache_tsc_multiplier(vmx);

 if (enable_vpid) {
  if (nested_cpu_has_vpid(vmcs12) && nested_has_guest_tlb_tag(vcpu)) {
   if (vmcs12->virtual_processor_id != vmx->nested.last_vpid) {
    vmx->nested.last_vpid = vmcs12->virtual_processor_id;
    __vmx_flush_tlb(vcpu, nested_get_vpid02(vcpu), 0);
   }
  } else {
   kvm_make_request(KVM_REQ_TLB_FLUSH, vcpu);
  }
 }

 if (nested_cpu_has_ept(vmcs12))
  nested_ept_init_mmu_context(vcpu);
 else if (nested_cpu_has2(vmcs12,
     SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES))
  vmx_flush_tlb(vcpu, 1);
 vmx_set_cr0(vcpu, vmcs12->guest_cr0);
 vmcs_writel(CR0_READ_SHADOW, nested_read_cr0(vmcs12));

 vmx_set_cr4(vcpu, vmcs12->guest_cr4);
 vmcs_writel(CR4_READ_SHADOW, nested_read_cr4(vmcs12));

 vcpu->arch.efer = nested_vmx_calc_efer(vmx, vmcs12);

 vmx_set_efer(vcpu, vcpu->arch.efer);






 if (vmx->emulation_required) {
  *entry_failure_code = ENTRY_FAIL_DEFAULT;
  return -EINVAL;
 }


 if (nested_vmx_load_cr3(vcpu, vmcs12->guest_cr3, nested_cpu_has_ept(vmcs12),
    entry_failure_code))
  return -EINVAL;


 if (load_guest_pdptrs_vmcs12 && nested_cpu_has_ept(vmcs12) &&
     is_pae_paging(vcpu)) {
  vmcs_write64(GUEST_PDPTR0, vmcs12->guest_pdptr0);
  vmcs_write64(GUEST_PDPTR1, vmcs12->guest_pdptr1);
  vmcs_write64(GUEST_PDPTR2, vmcs12->guest_pdptr2);
  vmcs_write64(GUEST_PDPTR3, vmcs12->guest_pdptr3);
 }

 if (!enable_ept)
  vcpu->arch.walk_mmu->inject_page_fault = vmx_inject_page_fault_nested;

 kvm_rsp_write(vcpu, vmcs12->guest_rsp);
 kvm_rip_write(vcpu, vmcs12->guest_rip);
 return 0;
}
