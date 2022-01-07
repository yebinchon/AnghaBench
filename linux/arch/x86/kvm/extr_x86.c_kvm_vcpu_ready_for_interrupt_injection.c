
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 scalar_t__ kvm_arch_interrupt_allowed (struct kvm_vcpu*) ;
 scalar_t__ kvm_cpu_accept_dm_intr (struct kvm_vcpu*) ;
 int kvm_cpu_has_interrupt (struct kvm_vcpu*) ;
 int kvm_event_needs_reinjection (struct kvm_vcpu*) ;

__attribute__((used)) static int kvm_vcpu_ready_for_interrupt_injection(struct kvm_vcpu *vcpu)
{
 return kvm_arch_interrupt_allowed(vcpu) &&
  !kvm_cpu_has_interrupt(vcpu) &&
  !kvm_event_needs_reinjection(vcpu) &&
  kvm_cpu_accept_dm_intr(vcpu);
}
