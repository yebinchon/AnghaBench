
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {int wq; TYPE_1__ arch; } ;
struct TYPE_4__ {scalar_t__ period; int hv_timer_in_use; } ;
struct kvm_lapic {TYPE_2__ lapic_timer; } ;


 int WARN_ON (int ) ;
 int advance_periodic_target_expiration (struct kvm_lapic*) ;
 scalar_t__ apic_lvtt_period (struct kvm_lapic*) ;
 int apic_timer_expired (struct kvm_lapic*) ;
 int cancel_hv_timer (struct kvm_lapic*) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int restart_apic_timer (struct kvm_lapic*) ;
 int swait_active (int *) ;

void kvm_lapic_expired_hv_timer(struct kvm_vcpu *vcpu)
{
 struct kvm_lapic *apic = vcpu->arch.apic;

 preempt_disable();

 if (!apic->lapic_timer.hv_timer_in_use)
  goto out;
 WARN_ON(swait_active(&vcpu->wq));
 cancel_hv_timer(apic);
 apic_timer_expired(apic);

 if (apic_lvtt_period(apic) && apic->lapic_timer.period) {
  advance_periodic_target_expiration(apic);
  restart_apic_timer(apic);
 }
out:
 preempt_enable();
}
