
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmcs12 {int vm_entry_msr_load_addr; int vm_entry_msr_load_count; } ;
struct kvm_vcpu {int dummy; } ;


 scalar_t__ CC (int ) ;
 int EINVAL ;
 int nested_vmx_check_msr_switch (struct kvm_vcpu*,int ,int ) ;

__attribute__((used)) static int nested_vmx_check_entry_msr_switch_controls(struct kvm_vcpu *vcpu,
                                                      struct vmcs12 *vmcs12)
{
 if (CC(nested_vmx_check_msr_switch(vcpu,
        vmcs12->vm_entry_msr_load_count,
        vmcs12->vm_entry_msr_load_addr)))
                return -EINVAL;

 return 0;
}
