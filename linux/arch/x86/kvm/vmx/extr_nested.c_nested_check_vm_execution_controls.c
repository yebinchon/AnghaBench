
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmcs12 {scalar_t__ cr3_target_count; int vm_function_control; int eptp_list_address; int ept_pointer; int virtual_processor_id; int secondary_vm_exec_control; int cpu_based_vm_exec_control; int pin_based_vm_exec_control; } ;
struct TYPE_3__ {int vmfunc_controls; int secondary_ctls_high; int secondary_ctls_low; int procbased_ctls_high; int procbased_ctls_low; int pinbased_ctls_high; int pinbased_ctls_low; } ;
struct TYPE_4__ {TYPE_1__ msrs; } ;
struct vcpu_vmx {TYPE_2__ nested; } ;
struct kvm_vcpu {int dummy; } ;


 scalar_t__ CC (int) ;
 int CPU_BASED_ACTIVATE_SECONDARY_CONTROLS ;
 int EINVAL ;
 scalar_t__ nested_cpu_has (struct vmcs12*,int ) ;
 scalar_t__ nested_cpu_has_ept (struct vmcs12*) ;
 scalar_t__ nested_cpu_has_eptp_switching (struct vmcs12*) ;
 int nested_cpu_has_preemption_timer (struct vmcs12*) ;
 scalar_t__ nested_cpu_has_save_preemption_timer (struct vmcs12*) ;
 scalar_t__ nested_cpu_has_vmfunc (struct vmcs12*) ;
 scalar_t__ nested_cpu_has_vpid (struct vmcs12*) ;
 scalar_t__ nested_cpu_vmx_misc_cr3_count (struct kvm_vcpu*) ;
 scalar_t__ nested_vmx_check_apic_access_controls (struct kvm_vcpu*,struct vmcs12*) ;
 scalar_t__ nested_vmx_check_apicv_controls (struct kvm_vcpu*,struct vmcs12*) ;
 scalar_t__ nested_vmx_check_io_bitmap_controls (struct kvm_vcpu*,struct vmcs12*) ;
 scalar_t__ nested_vmx_check_mode_based_ept_exec_controls (struct kvm_vcpu*,struct vmcs12*) ;
 scalar_t__ nested_vmx_check_msr_bitmap_controls (struct kvm_vcpu*,struct vmcs12*) ;
 scalar_t__ nested_vmx_check_nmi_controls (struct vmcs12*) ;
 scalar_t__ nested_vmx_check_pml_controls (struct kvm_vcpu*,struct vmcs12*) ;
 scalar_t__ nested_vmx_check_shadow_vmcs_controls (struct kvm_vcpu*,struct vmcs12*) ;
 scalar_t__ nested_vmx_check_tpr_shadow_controls (struct kvm_vcpu*,struct vmcs12*) ;
 scalar_t__ nested_vmx_check_unrestricted_guest_controls (struct kvm_vcpu*,struct vmcs12*) ;
 int page_address_valid (struct kvm_vcpu*,int ) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int valid_ept_address (struct kvm_vcpu*,int ) ;
 int vmx_control_verify (int ,int ,int ) ;

__attribute__((used)) static int nested_check_vm_execution_controls(struct kvm_vcpu *vcpu,
                                              struct vmcs12 *vmcs12)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);

 if (CC(!vmx_control_verify(vmcs12->pin_based_vm_exec_control,
       vmx->nested.msrs.pinbased_ctls_low,
       vmx->nested.msrs.pinbased_ctls_high)) ||
     CC(!vmx_control_verify(vmcs12->cpu_based_vm_exec_control,
       vmx->nested.msrs.procbased_ctls_low,
       vmx->nested.msrs.procbased_ctls_high)))
  return -EINVAL;

 if (nested_cpu_has(vmcs12, CPU_BASED_ACTIVATE_SECONDARY_CONTROLS) &&
     CC(!vmx_control_verify(vmcs12->secondary_vm_exec_control,
       vmx->nested.msrs.secondary_ctls_low,
       vmx->nested.msrs.secondary_ctls_high)))
  return -EINVAL;

 if (CC(vmcs12->cr3_target_count > nested_cpu_vmx_misc_cr3_count(vcpu)) ||
     nested_vmx_check_io_bitmap_controls(vcpu, vmcs12) ||
     nested_vmx_check_msr_bitmap_controls(vcpu, vmcs12) ||
     nested_vmx_check_tpr_shadow_controls(vcpu, vmcs12) ||
     nested_vmx_check_apic_access_controls(vcpu, vmcs12) ||
     nested_vmx_check_apicv_controls(vcpu, vmcs12) ||
     nested_vmx_check_nmi_controls(vmcs12) ||
     nested_vmx_check_pml_controls(vcpu, vmcs12) ||
     nested_vmx_check_unrestricted_guest_controls(vcpu, vmcs12) ||
     nested_vmx_check_mode_based_ept_exec_controls(vcpu, vmcs12) ||
     nested_vmx_check_shadow_vmcs_controls(vcpu, vmcs12) ||
     CC(nested_cpu_has_vpid(vmcs12) && !vmcs12->virtual_processor_id))
  return -EINVAL;

 if (!nested_cpu_has_preemption_timer(vmcs12) &&
     nested_cpu_has_save_preemption_timer(vmcs12))
  return -EINVAL;

 if (nested_cpu_has_ept(vmcs12) &&
     CC(!valid_ept_address(vcpu, vmcs12->ept_pointer)))
  return -EINVAL;

 if (nested_cpu_has_vmfunc(vmcs12)) {
  if (CC(vmcs12->vm_function_control &
         ~vmx->nested.msrs.vmfunc_controls))
   return -EINVAL;

  if (nested_cpu_has_eptp_switching(vmcs12)) {
   if (CC(!nested_cpu_has_ept(vmcs12)) ||
       CC(!page_address_valid(vcpu, vmcs12->eptp_list_address)))
    return -EINVAL;
  }
 }

 return 0;
}
