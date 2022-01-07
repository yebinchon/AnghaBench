
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmcs12 {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {scalar_t__ vpid02; } ;
struct TYPE_4__ {TYPE_1__ nested; } ;


 struct vmcs12* get_vmcs12 (struct kvm_vcpu*) ;
 scalar_t__ nested_cpu_has_ept (struct vmcs12*) ;
 scalar_t__ nested_cpu_has_vpid (struct vmcs12*) ;
 TYPE_2__* to_vmx (struct kvm_vcpu*) ;

__attribute__((used)) static bool nested_has_guest_tlb_tag(struct kvm_vcpu *vcpu)
{
 struct vmcs12 *vmcs12 = get_vmcs12(vcpu);

 return nested_cpu_has_ept(vmcs12) ||
        (nested_cpu_has_vpid(vmcs12) && to_vmx(vcpu)->nested.vpid02);
}
