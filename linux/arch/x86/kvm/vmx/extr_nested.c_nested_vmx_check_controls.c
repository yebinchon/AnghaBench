
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmcs12 {int dummy; } ;
struct kvm_vcpu {int dummy; } ;


 int EINVAL ;
 scalar_t__ nested_check_vm_entry_controls (struct kvm_vcpu*,struct vmcs12*) ;
 scalar_t__ nested_check_vm_execution_controls (struct kvm_vcpu*,struct vmcs12*) ;
 scalar_t__ nested_check_vm_exit_controls (struct kvm_vcpu*,struct vmcs12*) ;

__attribute__((used)) static int nested_vmx_check_controls(struct kvm_vcpu *vcpu,
         struct vmcs12 *vmcs12)
{
 if (nested_check_vm_execution_controls(vcpu, vmcs12) ||
     nested_check_vm_exit_controls(vcpu, vmcs12) ||
     nested_check_vm_entry_controls(vcpu, vmcs12))
  return -EINVAL;

 return 0;
}
