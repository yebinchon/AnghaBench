
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int period; int target_expiration; } ;
struct kvm_lapic {int divide_count; TYPE_1__ lapic_timer; } ;
typedef int s64 ;
typedef scalar_t__ ktime_t ;


 int APIC_BUS_CYCLE_NS ;
 int APIC_TMICT ;
 int ASSERT (int ) ;
 int div64_u64 (int ,int) ;
 scalar_t__ ktime_get () ;
 scalar_t__ ktime_sub (int ,scalar_t__) ;
 scalar_t__ ktime_to_ns (scalar_t__) ;
 scalar_t__ kvm_lapic_get_reg (struct kvm_lapic*,int ) ;
 int mod_64 (scalar_t__,int ) ;

__attribute__((used)) static u32 apic_get_tmcct(struct kvm_lapic *apic)
{
 ktime_t remaining, now;
 s64 ns;
 u32 tmcct;

 ASSERT(apic != ((void*)0));


 if (kvm_lapic_get_reg(apic, APIC_TMICT) == 0 ||
  apic->lapic_timer.period == 0)
  return 0;

 now = ktime_get();
 remaining = ktime_sub(apic->lapic_timer.target_expiration, now);
 if (ktime_to_ns(remaining) < 0)
  remaining = 0;

 ns = mod_64(ktime_to_ns(remaining), apic->lapic_timer.period);
 tmcct = div64_u64(ns,
    (APIC_BUS_CYCLE_NS * apic->divide_count));

 return tmcct;
}
