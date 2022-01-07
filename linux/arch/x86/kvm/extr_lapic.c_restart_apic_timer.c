
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pending; } ;
struct kvm_lapic {TYPE_1__ lapic_timer; } ;


 int apic_lvtt_period (struct kvm_lapic*) ;
 scalar_t__ atomic_read (int *) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int start_hv_timer (struct kvm_lapic*) ;
 int start_sw_timer (struct kvm_lapic*) ;

__attribute__((used)) static void restart_apic_timer(struct kvm_lapic *apic)
{
 preempt_disable();

 if (!apic_lvtt_period(apic) && atomic_read(&apic->lapic_timer.pending))
  goto out;

 if (!start_hv_timer(apic))
  start_sw_timer(apic);
out:
 preempt_enable();
}
