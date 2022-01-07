
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {scalar_t__ hv_timer_in_use; } ;
struct kvm_lapic {TYPE_2__ lapic_timer; } ;


 int preempt_disable () ;
 int preempt_enable () ;
 int start_sw_timer (struct kvm_lapic*) ;

void kvm_lapic_switch_to_sw_timer(struct kvm_vcpu *vcpu)
{
 struct kvm_lapic *apic = vcpu->arch.apic;

 preempt_disable();

 if (apic->lapic_timer.hv_timer_in_use)
  start_sw_timer(apic);
 preempt_enable();
}
