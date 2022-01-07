
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ tscdeadline; int target_expiration; int period; } ;
struct kvm_lapic {int vcpu; TYPE_1__ lapic_timer; } ;
typedef int ktime_t ;


 int ktime_add_ns (int ,int ) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 scalar_t__ kvm_read_l1_tsc (int ,int ) ;
 scalar_t__ nsec_to_cycles (int ,int ) ;
 int rdtsc () ;

__attribute__((used)) static void advance_periodic_target_expiration(struct kvm_lapic *apic)
{
 ktime_t now = ktime_get();
 u64 tscl = rdtsc();
 ktime_t delta;
 apic->lapic_timer.target_expiration =
  ktime_add_ns(apic->lapic_timer.target_expiration,
    apic->lapic_timer.period);
 delta = ktime_sub(apic->lapic_timer.target_expiration, now);
 apic->lapic_timer.tscdeadline = kvm_read_l1_tsc(apic->vcpu, tscl) +
  nsec_to_cycles(apic->vcpu, delta);
}
