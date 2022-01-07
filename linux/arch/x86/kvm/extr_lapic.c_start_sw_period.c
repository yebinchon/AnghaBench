
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int target_expiration; int timer; int period; } ;
struct kvm_lapic {TYPE_1__ lapic_timer; } ;


 int HRTIMER_MODE_ABS ;
 int advance_periodic_target_expiration (struct kvm_lapic*) ;
 scalar_t__ apic_lvtt_oneshot (struct kvm_lapic*) ;
 int apic_timer_expired (struct kvm_lapic*) ;
 int hrtimer_start (int *,int ,int ) ;
 scalar_t__ ktime_after (int ,int ) ;
 int ktime_get () ;

__attribute__((used)) static void start_sw_period(struct kvm_lapic *apic)
{
 if (!apic->lapic_timer.period)
  return;

 if (ktime_after(ktime_get(),
   apic->lapic_timer.target_expiration)) {
  apic_timer_expired(apic);

  if (apic_lvtt_oneshot(apic))
   return;

  advance_periodic_target_expiration(apic);
 }

 hrtimer_start(&apic->lapic_timer.timer,
  apic->lapic_timer.target_expiration,
  HRTIMER_MODE_ABS);
}
