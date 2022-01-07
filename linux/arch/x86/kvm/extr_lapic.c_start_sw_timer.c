
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_timer {int pending; scalar_t__ hv_timer_in_use; } ;
struct kvm_lapic {TYPE_1__* vcpu; struct kvm_timer lapic_timer; } ;
struct TYPE_2__ {int vcpu_id; } ;


 int WARN_ON (int ) ;
 scalar_t__ apic_lvtt_oneshot (struct kvm_lapic*) ;
 scalar_t__ apic_lvtt_period (struct kvm_lapic*) ;
 scalar_t__ apic_lvtt_tscdeadline (struct kvm_lapic*) ;
 scalar_t__ atomic_read (int *) ;
 int cancel_hv_timer (struct kvm_lapic*) ;
 int preemptible () ;
 int start_sw_period (struct kvm_lapic*) ;
 int start_sw_tscdeadline (struct kvm_lapic*) ;
 int trace_kvm_hv_timer_state (int ,int) ;

__attribute__((used)) static void start_sw_timer(struct kvm_lapic *apic)
{
 struct kvm_timer *ktimer = &apic->lapic_timer;

 WARN_ON(preemptible());
 if (apic->lapic_timer.hv_timer_in_use)
  cancel_hv_timer(apic);
 if (!apic_lvtt_period(apic) && atomic_read(&ktimer->pending))
  return;

 if (apic_lvtt_period(apic) || apic_lvtt_oneshot(apic))
  start_sw_period(apic);
 else if (apic_lvtt_tscdeadline(apic))
  start_sw_tscdeadline(apic);
 trace_kvm_hv_timer_state(apic->vcpu->vcpu_id, 0);
}
