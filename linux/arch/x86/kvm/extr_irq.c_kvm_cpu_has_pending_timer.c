
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int apic_has_pending_timer (struct kvm_vcpu*) ;
 scalar_t__ lapic_in_kernel (struct kvm_vcpu*) ;

int kvm_cpu_has_pending_timer(struct kvm_vcpu *vcpu)
{
 if (lapic_in_kernel(vcpu))
  return apic_has_pending_timer(vcpu);

 return 0;
}
