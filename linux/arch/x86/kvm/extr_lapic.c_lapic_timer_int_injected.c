
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ apicv_active; struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_lapic {void* regs; } ;


 int APIC_IRR ;
 int APIC_ISR ;
 int APIC_LVTT ;
 int APIC_VECTOR_MASK ;
 scalar_t__ apic_test_vector (int,void*) ;
 scalar_t__ kvm_apic_hw_enabled (struct kvm_lapic*) ;
 int kvm_lapic_get_reg (struct kvm_lapic*,int ) ;

__attribute__((used)) static bool lapic_timer_int_injected(struct kvm_vcpu *vcpu)
{
 struct kvm_lapic *apic = vcpu->arch.apic;
 u32 reg = kvm_lapic_get_reg(apic, APIC_LVTT);

 if (kvm_apic_hw_enabled(apic)) {
  int vec = reg & APIC_VECTOR_MASK;
  void *bitmap = apic->regs + APIC_ISR;

  if (vcpu->arch.apicv_active)
   bitmap = apic->regs + APIC_IRR;

  if (apic_test_vector(vec, bitmap))
   return 1;
 }
 return 0;
}
