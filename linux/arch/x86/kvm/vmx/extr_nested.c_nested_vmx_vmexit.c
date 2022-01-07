
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct vmcs12 {int cpu_based_vm_exec_control; int vm_exit_intr_info; int vm_exit_intr_error_code; int idt_vectoring_info_field; int exit_qualification; int vm_exit_reason; scalar_t__ tsc_offset; } ;
struct TYPE_9__ {int nested_run_pending; int change_vmcs01_virtual_apic_mode; int need_vmcs12_to_shadow_sync; scalar_t__ hv_evmcs; int * pi_desc; int pi_desc_map; int virtual_apic_map; int * apic_access_page; int preemption_timer; } ;
struct TYPE_7__ {int nr; } ;
struct TYPE_6__ {int nr; } ;
struct TYPE_8__ {TYPE_2__ guest; TYPE_1__ host; } ;
struct vcpu_vmx {scalar_t__ fail; TYPE_4__ nested; TYPE_3__ msr_autoload; int vmcs01; } ;
struct TYPE_10__ {int mp_state; int tsc_offset; } ;
struct kvm_vcpu {TYPE_5__ arch; } ;


 int CPU_BASED_USE_TSC_OFFSETING ;
 int EXIT_REASON_EXTERNAL_INTERRUPT ;
 int INTR_INFO_VALID_MASK ;
 int INTR_TYPE_EXT_INTR ;
 int KVM_ISA_VMX ;
 int KVM_MP_STATE_RUNNABLE ;
 int KVM_REQ_APIC_PAGE_RELOAD ;
 int SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES ;
 int TSC_OFFSET ;
 scalar_t__ VMXERR_ENTRY_INVALID_CONTROL_FIELD ;
 int VM_ENTRY_MSR_LOAD_COUNT ;
 int VM_EXIT_MSR_LOAD_COUNT ;
 int VM_INSTRUCTION_ERROR ;
 int WARN_ON (int) ;
 int WARN_ON_ONCE (int) ;
 int decache_tsc_multiplier (struct vcpu_vmx*) ;
 scalar_t__ enable_shadow_vmcs ;
 struct vmcs12* get_vmcs12 (struct kvm_vcpu*) ;
 int hrtimer_cancel (int *) ;
 int kvm_cpu_get_interrupt (struct kvm_vcpu*) ;
 scalar_t__ kvm_cpu_has_interrupt (struct kvm_vcpu*) ;
 scalar_t__ kvm_has_tsc_control ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 int kvm_release_page_dirty (int *) ;
 int kvm_vcpu_unmap (struct kvm_vcpu*,int *,int) ;
 int leave_guest_mode (struct kvm_vcpu*) ;
 scalar_t__ likely (int) ;
 int load_vmcs12_host_state (struct kvm_vcpu*,struct vmcs12*) ;
 scalar_t__ nested_cpu_has2 (struct vmcs12*,int ) ;
 int nested_cpu_has_ept (struct vmcs12*) ;
 scalar_t__ nested_cpu_has_preemption_timer (struct vmcs12*) ;
 int nested_early_check ;
 scalar_t__ nested_exit_intr_ack_set (struct kvm_vcpu*) ;
 int nested_flush_cached_shadow_vmcs12 (struct kvm_vcpu*,struct vmcs12*) ;
 int nested_vmx_failValid (struct kvm_vcpu*,scalar_t__) ;
 int nested_vmx_restore_host_state (struct kvm_vcpu*) ;
 int prepare_vmcs12 (struct kvm_vcpu*,struct vmcs12*,int,int,unsigned long) ;
 int sync_vmcs02_to_vmcs12 (struct kvm_vcpu*,struct vmcs12*) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int trace_kvm_nested_vmexit_inject (int ,int ,int ,int,int ,int ) ;
 scalar_t__ vmcs_read32 (int ) ;
 int vmcs_write32 (int ,int ) ;
 int vmcs_write64 (int ,int ) ;
 int vmx_flush_tlb (struct kvm_vcpu*,int) ;
 int vmx_set_virtual_apic_mode (struct kvm_vcpu*) ;
 int vmx_switch_vmcs (struct kvm_vcpu*,int *) ;

void nested_vmx_vmexit(struct kvm_vcpu *vcpu, u32 exit_reason,
         u32 exit_intr_info, unsigned long exit_qualification)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 struct vmcs12 *vmcs12 = get_vmcs12(vcpu);


 WARN_ON_ONCE(vmx->nested.nested_run_pending);

 leave_guest_mode(vcpu);

 if (nested_cpu_has_preemption_timer(vmcs12))
  hrtimer_cancel(&to_vmx(vcpu)->nested.preemption_timer);

 if (vmcs12->cpu_based_vm_exec_control & CPU_BASED_USE_TSC_OFFSETING)
  vcpu->arch.tsc_offset -= vmcs12->tsc_offset;

 if (likely(!vmx->fail)) {
  sync_vmcs02_to_vmcs12(vcpu, vmcs12);

  if (exit_reason != -1)
   prepare_vmcs12(vcpu, vmcs12, exit_reason, exit_intr_info,
           exit_qualification);
  nested_flush_cached_shadow_vmcs12(vcpu, vmcs12);
 } else {






  WARN_ON_ONCE(vmcs_read32(VM_INSTRUCTION_ERROR) !=
        VMXERR_ENTRY_INVALID_CONTROL_FIELD);
  WARN_ON_ONCE(nested_early_check);
 }

 vmx_switch_vmcs(vcpu, &vmx->vmcs01);


 vmcs_write32(VM_EXIT_MSR_LOAD_COUNT, vmx->msr_autoload.host.nr);
 vmcs_write32(VM_ENTRY_MSR_LOAD_COUNT, vmx->msr_autoload.guest.nr);
 vmcs_write64(TSC_OFFSET, vcpu->arch.tsc_offset);

 if (kvm_has_tsc_control)
  decache_tsc_multiplier(vmx);

 if (vmx->nested.change_vmcs01_virtual_apic_mode) {
  vmx->nested.change_vmcs01_virtual_apic_mode = 0;
  vmx_set_virtual_apic_mode(vcpu);
 } else if (!nested_cpu_has_ept(vmcs12) &&
     nested_cpu_has2(vmcs12,
       SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES)) {
  vmx_flush_tlb(vcpu, 1);
 }


 if (vmx->nested.apic_access_page) {
  kvm_release_page_dirty(vmx->nested.apic_access_page);
  vmx->nested.apic_access_page = ((void*)0);
 }
 kvm_vcpu_unmap(vcpu, &vmx->nested.virtual_apic_map, 1);
 kvm_vcpu_unmap(vcpu, &vmx->nested.pi_desc_map, 1);
 vmx->nested.pi_desc = ((void*)0);





 kvm_make_request(KVM_REQ_APIC_PAGE_RELOAD, vcpu);

 if ((exit_reason != -1) && (enable_shadow_vmcs || vmx->nested.hv_evmcs))
  vmx->nested.need_vmcs12_to_shadow_sync = 1;


 vcpu->arch.mp_state = KVM_MP_STATE_RUNNABLE;

 if (likely(!vmx->fail)) {
  if (nested_exit_intr_ack_set(vcpu) &&
      exit_reason == EXIT_REASON_EXTERNAL_INTERRUPT &&
      kvm_cpu_has_interrupt(vcpu)) {
   int irq = kvm_cpu_get_interrupt(vcpu);
   WARN_ON(irq < 0);
   vmcs12->vm_exit_intr_info = irq |
    INTR_INFO_VALID_MASK | INTR_TYPE_EXT_INTR;
  }

  if (exit_reason != -1)
   trace_kvm_nested_vmexit_inject(vmcs12->vm_exit_reason,
             vmcs12->exit_qualification,
             vmcs12->idt_vectoring_info_field,
             vmcs12->vm_exit_intr_info,
             vmcs12->vm_exit_intr_error_code,
             KVM_ISA_VMX);

  load_vmcs12_host_state(vcpu, vmcs12);

  return;
 }
 (void)nested_vmx_failValid(vcpu, VMXERR_ENTRY_INVALID_CONTROL_FIELD);







 nested_vmx_restore_host_state(vcpu);

 vmx->fail = 0;
}
