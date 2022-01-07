
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pending; } ;
struct kvm_lapic {TYPE_1__ lapic_timer; } ;


 scalar_t__ apic_lvtt_oneshot (struct kvm_lapic*) ;
 scalar_t__ apic_lvtt_period (struct kvm_lapic*) ;
 int atomic_set (int *,int ) ;
 int restart_apic_timer (struct kvm_lapic*) ;
 int set_target_expiration (struct kvm_lapic*) ;

__attribute__((used)) static void start_apic_timer(struct kvm_lapic *apic)
{
 atomic_set(&apic->lapic_timer.pending, 0);

 if ((apic_lvtt_period(apic) || apic_lvtt_oneshot(apic))
     && !set_target_expiration(apic))
  return;

 restart_apic_timer(apic);
}
