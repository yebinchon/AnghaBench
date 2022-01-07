
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_lapic {scalar_t__ regs; } ;


 scalar_t__ APIC_IRR ;
 scalar_t__ APIC_ISR ;
 scalar_t__ apic_test_vector (int,scalar_t__) ;

bool kvm_apic_pending_eoi(struct kvm_vcpu *vcpu, int vector)
{
 struct kvm_lapic *apic = vcpu->arch.apic;

 return apic_test_vector(vector, apic->regs + APIC_ISR) ||
  apic_test_vector(vector, apic->regs + APIC_IRR);
}
