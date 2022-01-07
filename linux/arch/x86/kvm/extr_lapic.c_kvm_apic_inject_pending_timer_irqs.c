
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_timer {scalar_t__ target_expiration; scalar_t__ tscdeadline; } ;
struct kvm_lapic {struct kvm_timer lapic_timer; } ;


 int APIC_LVTT ;
 scalar_t__ apic_lvtt_oneshot (struct kvm_lapic*) ;
 scalar_t__ apic_lvtt_tscdeadline (struct kvm_lapic*) ;
 int kvm_apic_local_deliver (struct kvm_lapic*,int ) ;

__attribute__((used)) static void kvm_apic_inject_pending_timer_irqs(struct kvm_lapic *apic)
{
 struct kvm_timer *ktimer = &apic->lapic_timer;

 kvm_apic_local_deliver(apic, APIC_LVTT);
 if (apic_lvtt_tscdeadline(apic))
  ktimer->tscdeadline = 0;
 if (apic_lvtt_oneshot(apic)) {
  ktimer->tscdeadline = 0;
  ktimer->target_expiration = 0;
 }
}
