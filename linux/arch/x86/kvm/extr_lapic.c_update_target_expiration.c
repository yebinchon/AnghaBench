
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u64 ;
struct TYPE_2__ {int period; int target_expiration; int tscdeadline; } ;
struct kvm_lapic {int divide_count; TYPE_1__ lapic_timer; int vcpu; } ;
typedef scalar_t__ ktime_t ;


 int APIC_BUS_CYCLE_NS ;
 int APIC_TMICT ;
 int ktime_add_ns (scalar_t__,int) ;
 scalar_t__ ktime_get () ;
 scalar_t__ ktime_sub (int ,scalar_t__) ;
 scalar_t__ ktime_to_ns (scalar_t__) ;
 scalar_t__ kvm_lapic_get_reg (struct kvm_lapic*,int ) ;
 int limit_periodic_timer_frequency (struct kvm_lapic*) ;
 int mul_u64_u32_div (int,int,int ) ;
 scalar_t__ nsec_to_cycles (int ,int) ;

__attribute__((used)) static void update_target_expiration(struct kvm_lapic *apic, uint32_t old_divisor)
{
 ktime_t now, remaining;
 u64 ns_remaining_old, ns_remaining_new;

 apic->lapic_timer.period = (u64)kvm_lapic_get_reg(apic, APIC_TMICT)
  * APIC_BUS_CYCLE_NS * apic->divide_count;
 limit_periodic_timer_frequency(apic);

 now = ktime_get();
 remaining = ktime_sub(apic->lapic_timer.target_expiration, now);
 if (ktime_to_ns(remaining) < 0)
  remaining = 0;

 ns_remaining_old = ktime_to_ns(remaining);
 ns_remaining_new = mul_u64_u32_div(ns_remaining_old,
                                    apic->divide_count, old_divisor);

 apic->lapic_timer.tscdeadline +=
  nsec_to_cycles(apic->vcpu, ns_remaining_new) -
  nsec_to_cycles(apic->vcpu, ns_remaining_old);
 apic->lapic_timer.target_expiration = ktime_add_ns(now, ns_remaining_new);
}
