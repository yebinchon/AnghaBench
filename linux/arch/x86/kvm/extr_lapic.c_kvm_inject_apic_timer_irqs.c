
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int pending; } ;
struct kvm_lapic {TYPE_2__ lapic_timer; } ;


 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int kvm_apic_inject_pending_timer_irqs (struct kvm_lapic*) ;

void kvm_inject_apic_timer_irqs(struct kvm_vcpu *vcpu)
{
 struct kvm_lapic *apic = vcpu->arch.apic;

 if (atomic_read(&apic->lapic_timer.pending) > 0) {
  kvm_apic_inject_pending_timer_irqs(apic);
  atomic_set(&apic->lapic_timer.pending, 0);
 }
}
