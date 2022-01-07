
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_timer {int pending; scalar_t__ timer_advance_ns; int tscdeadline; int expired_tscdeadline; scalar_t__ hv_timer_in_use; } ;
struct kvm_lapic {struct kvm_timer lapic_timer; struct kvm_vcpu* vcpu; } ;


 int __kvm_wait_lapic_expire (struct kvm_vcpu*) ;
 scalar_t__ apic_lvtt_tscdeadline (struct kvm_lapic*) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int kvm_apic_inject_pending_timer_irqs (struct kvm_lapic*) ;
 int kvm_set_pending_timer (struct kvm_vcpu*) ;
 scalar_t__ kvm_use_posted_timer_interrupt (struct kvm_vcpu*) ;

__attribute__((used)) static void apic_timer_expired(struct kvm_lapic *apic)
{
 struct kvm_vcpu *vcpu = apic->vcpu;
 struct kvm_timer *ktimer = &apic->lapic_timer;

 if (atomic_read(&apic->lapic_timer.pending))
  return;

 if (apic_lvtt_tscdeadline(apic) || ktimer->hv_timer_in_use)
  ktimer->expired_tscdeadline = ktimer->tscdeadline;

 if (kvm_use_posted_timer_interrupt(apic->vcpu)) {
  if (apic->lapic_timer.timer_advance_ns)
   __kvm_wait_lapic_expire(vcpu);
  kvm_apic_inject_pending_timer_irqs(apic);
  return;
 }

 atomic_inc(&apic->lapic_timer.pending);
 kvm_set_pending_timer(vcpu);
}
