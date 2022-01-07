
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmcs12 {int dummy; } ;
struct kvm_vcpu {int dummy; } ;


 scalar_t__ CC (int) ;
 int EINVAL ;
 int SECONDARY_EXEC_MODE_BASED_EPT_EXEC ;
 scalar_t__ nested_cpu_has2 (struct vmcs12*,int ) ;
 int nested_cpu_has_ept (struct vmcs12*) ;

__attribute__((used)) static int nested_vmx_check_mode_based_ept_exec_controls(struct kvm_vcpu *vcpu,
        struct vmcs12 *vmcs12)
{
 if (CC(nested_cpu_has2(vmcs12, SECONDARY_EXEC_MODE_BASED_EPT_EXEC) &&
        !nested_cpu_has_ept(vmcs12)))
  return -EINVAL;
 return 0;
}
