
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_14__ {scalar_t__ nested_run_pending; scalar_t__ need_vmcs12_to_shadow_sync; } ;
struct vcpu_vmx {int ple_window_dirty; scalar_t__ host_pkru; int idt_vectoring_info; int exit_reason; TYPE_7__* loaded_vmcs; scalar_t__ fail; TYPE_6__ nested; scalar_t__ host_debugctlmsr; int spec_ctrl; int ple_window; scalar_t__ emulation_required; } ;
struct TYPE_12__ {int vp_index; } ;
struct TYPE_13__ {unsigned long* regs; scalar_t__ pkru; scalar_t__ cr2; int regs_avail; scalar_t__ regs_dirty; TYPE_4__ hyperv; TYPE_3__* apic; } ;
struct kvm_vcpu {int guest_debug; TYPE_5__ arch; } ;
struct TYPE_16__ {int hv_vp_id; int hv_clean_fields; } ;
struct TYPE_9__ {unsigned long cr3; unsigned long cr4; } ;
struct TYPE_15__ {int launched; TYPE_1__ host_state; int entry_time; scalar_t__ soft_vnmi_blocked; } ;
struct TYPE_10__ {scalar_t__ timer_advance_ns; } ;
struct TYPE_11__ {TYPE_2__ lapic_timer; } ;


 scalar_t__ EXIT_REASON_MCE_DURING_VMENTRY ;
 int GUEST_RIP ;
 int GUEST_RSP ;
 int HOST_CR3 ;
 int HOST_CR4 ;
 int HV_VMX_ENLIGHTENED_CLEAN_FIELD_ALL ;
 int IDT_VECTORING_INFO_FIELD ;
 int KVM_GUESTDBG_SINGLESTEP ;
 int MSR_IA32_SPEC_CTRL ;
 int PLE_WINDOW ;
 int VCPU_EXREG_CR3 ;
 int VCPU_EXREG_PDPTR ;
 int VCPU_EXREG_RFLAGS ;
 int VCPU_EXREG_SEGMENTS ;
 size_t VCPU_REGS_RIP ;
 size_t VCPU_REGS_RSP ;
 int VMX_EXIT_REASONS_FAILED_VMENTRY ;
 int VM_EXIT_REASON ;
 int X86_CR4_PKE ;
 int X86_FEATURE_PKU ;
 int __USER_DS ;
 unsigned long __get_current_cr3_fast () ;
 scalar_t__ __vmx_vcpu_run (struct vcpu_vmx*,unsigned long*,int) ;
 int __write_pkru (scalar_t__) ;
 int atomic_switch_perf_msrs (struct vcpu_vmx*) ;
 int atomic_switch_umwait_control_msr (struct vcpu_vmx*) ;
 unsigned long cr4_read_shadow () ;
 TYPE_8__* current_evmcs ;
 int ds ;
 int enable_evmcs ;
 scalar_t__ enable_preemption_timer ;
 int enable_vnmi ;
 int es ;
 int ktime_get () ;
 int kvm_load_guest_xcr0 (struct kvm_vcpu*) ;
 int kvm_machine_check () ;
 int kvm_put_guest_xcr0 (struct kvm_vcpu*) ;
 scalar_t__ kvm_read_cr4_bits (struct kvm_vcpu*,int ) ;
 int kvm_wait_lapic_expire (struct kvm_vcpu*) ;
 scalar_t__ lapic_in_kernel (struct kvm_vcpu*) ;
 int loadsegment (int ,int ) ;
 int mds_clear_cpu_buffers () ;
 int mds_user_clear ;
 int msr_write_intercepted (struct kvm_vcpu*,int ) ;
 int native_read_msr (int ) ;
 int nested_sync_vmcs12_to_shadow (struct kvm_vcpu*) ;
 int pt_guest_enter (struct vcpu_vmx*) ;
 int pt_guest_exit (struct vcpu_vmx*) ;
 scalar_t__ rdpkru () ;
 scalar_t__ read_cr2 () ;
 scalar_t__ static_branch_unlikely (int *) ;
 scalar_t__ static_cpu_has (int ) ;
 scalar_t__ test_bit (size_t,unsigned long*) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 scalar_t__ unlikely (int) ;
 int update_debugctlmsr (scalar_t__) ;
 int vmcs_read32 (int ) ;
 int vmcs_write32 (int ,int ) ;
 int vmcs_writel (int ,unsigned long) ;
 int vmx_complete_interrupts (struct vcpu_vmx*) ;
 int vmx_l1d_flush (struct kvm_vcpu*) ;
 int vmx_l1d_should_flush ;
 int vmx_recover_nmi_blocking (struct vcpu_vmx*) ;
 int vmx_set_interrupt_shadow (struct kvm_vcpu*,int ) ;
 int vmx_update_hv_timer (struct kvm_vcpu*) ;
 int write_cr2 (scalar_t__) ;
 int x86_spec_ctrl_restore_host (int ,int ) ;
 int x86_spec_ctrl_set_guest (int ,int ) ;

__attribute__((used)) static void vmx_vcpu_run(struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 unsigned long cr3, cr4;


 if (unlikely(!enable_vnmi &&
       vmx->loaded_vmcs->soft_vnmi_blocked))
  vmx->loaded_vmcs->entry_time = ktime_get();



 if (vmx->emulation_required)
  return;

 if (vmx->ple_window_dirty) {
  vmx->ple_window_dirty = 0;
  vmcs_write32(PLE_WINDOW, vmx->ple_window);
 }

 if (vmx->nested.need_vmcs12_to_shadow_sync)
  nested_sync_vmcs12_to_shadow(vcpu);

 if (test_bit(VCPU_REGS_RSP, (unsigned long *)&vcpu->arch.regs_dirty))
  vmcs_writel(GUEST_RSP, vcpu->arch.regs[VCPU_REGS_RSP]);
 if (test_bit(VCPU_REGS_RIP, (unsigned long *)&vcpu->arch.regs_dirty))
  vmcs_writel(GUEST_RIP, vcpu->arch.regs[VCPU_REGS_RIP]);

 cr3 = __get_current_cr3_fast();
 if (unlikely(cr3 != vmx->loaded_vmcs->host_state.cr3)) {
  vmcs_writel(HOST_CR3, cr3);
  vmx->loaded_vmcs->host_state.cr3 = cr3;
 }

 cr4 = cr4_read_shadow();
 if (unlikely(cr4 != vmx->loaded_vmcs->host_state.cr4)) {
  vmcs_writel(HOST_CR4, cr4);
  vmx->loaded_vmcs->host_state.cr4 = cr4;
 }






 if (vcpu->guest_debug & KVM_GUESTDBG_SINGLESTEP)
  vmx_set_interrupt_shadow(vcpu, 0);

 kvm_load_guest_xcr0(vcpu);

 if (static_cpu_has(X86_FEATURE_PKU) &&
     kvm_read_cr4_bits(vcpu, X86_CR4_PKE) &&
     vcpu->arch.pkru != vmx->host_pkru)
  __write_pkru(vcpu->arch.pkru);

 pt_guest_enter(vmx);

 atomic_switch_perf_msrs(vmx);
 atomic_switch_umwait_control_msr(vmx);

 if (enable_preemption_timer)
  vmx_update_hv_timer(vcpu);

 if (lapic_in_kernel(vcpu) &&
  vcpu->arch.apic->lapic_timer.timer_advance_ns)
  kvm_wait_lapic_expire(vcpu);







 x86_spec_ctrl_set_guest(vmx->spec_ctrl, 0);


 if (static_branch_unlikely(&vmx_l1d_should_flush))
  vmx_l1d_flush(vcpu);
 else if (static_branch_unlikely(&mds_user_clear))
  mds_clear_cpu_buffers();

 if (vcpu->arch.cr2 != read_cr2())
  write_cr2(vcpu->arch.cr2);

 vmx->fail = __vmx_vcpu_run(vmx, (unsigned long *)&vcpu->arch.regs,
       vmx->loaded_vmcs->launched);

 vcpu->arch.cr2 = read_cr2();
 if (unlikely(!msr_write_intercepted(vcpu, MSR_IA32_SPEC_CTRL)))
  vmx->spec_ctrl = native_read_msr(MSR_IA32_SPEC_CTRL);

 x86_spec_ctrl_restore_host(vmx->spec_ctrl, 0);


 if (static_branch_unlikely(&enable_evmcs))
  current_evmcs->hv_clean_fields |=
   HV_VMX_ENLIGHTENED_CLEAN_FIELD_ALL;

 if (static_branch_unlikely(&enable_evmcs))
  current_evmcs->hv_vp_id = vcpu->arch.hyperv.vp_index;


 if (vmx->host_debugctlmsr)
  update_debugctlmsr(vmx->host_debugctlmsr);
 loadsegment(ds, __USER_DS);
 loadsegment(es, __USER_DS);


 vcpu->arch.regs_avail = ~((1 << VCPU_REGS_RIP) | (1 << VCPU_REGS_RSP)
      | (1 << VCPU_EXREG_RFLAGS)
      | (1 << VCPU_EXREG_PDPTR)
      | (1 << VCPU_EXREG_SEGMENTS)
      | (1 << VCPU_EXREG_CR3));
 vcpu->arch.regs_dirty = 0;

 pt_guest_exit(vmx);






 if (static_cpu_has(X86_FEATURE_PKU) &&
     kvm_read_cr4_bits(vcpu, X86_CR4_PKE)) {
  vcpu->arch.pkru = rdpkru();
  if (vcpu->arch.pkru != vmx->host_pkru)
   __write_pkru(vmx->host_pkru);
 }

 kvm_put_guest_xcr0(vcpu);

 vmx->nested.nested_run_pending = 0;
 vmx->idt_vectoring_info = 0;

 vmx->exit_reason = vmx->fail ? 0xdead : vmcs_read32(VM_EXIT_REASON);
 if ((u16)vmx->exit_reason == EXIT_REASON_MCE_DURING_VMENTRY)
  kvm_machine_check();

 if (vmx->fail || (vmx->exit_reason & VMX_EXIT_REASONS_FAILED_VMENTRY))
  return;

 vmx->loaded_vmcs->launched = 1;
 vmx->idt_vectoring_info = vmcs_read32(IDT_VECTORING_INFO_FIELD);

 vmx_recover_nmi_blocking(vmx);
 vmx_complete_interrupts(vmx);
}
