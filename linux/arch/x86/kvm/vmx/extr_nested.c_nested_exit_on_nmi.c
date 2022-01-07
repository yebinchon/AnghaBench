
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int get_vmcs12 (struct kvm_vcpu*) ;
 int nested_cpu_has_nmi_exiting (int ) ;

__attribute__((used)) static bool nested_exit_on_nmi(struct kvm_vcpu *vcpu)
{
 return nested_cpu_has_nmi_exiting(get_vmcs12(vcpu));
}
