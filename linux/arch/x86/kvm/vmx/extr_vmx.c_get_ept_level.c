
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 scalar_t__ cpu_has_vmx_ept_5levels () ;
 int cpuid_maxphyaddr (struct kvm_vcpu*) ;

__attribute__((used)) static int get_ept_level(struct kvm_vcpu *vcpu)
{
 if (cpu_has_vmx_ept_5levels() && (cpuid_maxphyaddr(vcpu) > 48))
  return 5;
 return 4;
}
