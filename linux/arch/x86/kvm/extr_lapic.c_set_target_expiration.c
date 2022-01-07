
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int period; int target_expiration; scalar_t__ tscdeadline; } ;
struct kvm_lapic {int divide_count; TYPE_1__ lapic_timer; int vcpu; } ;
typedef int ktime_t ;


 int APIC_BUS_CYCLE_NS ;
 int APIC_TMICT ;
 int ktime_add_ns (int ,int) ;
 int ktime_get () ;
 scalar_t__ kvm_lapic_get_reg (struct kvm_lapic*,int ) ;
 scalar_t__ kvm_read_l1_tsc (int ,int) ;
 int limit_periodic_timer_frequency (struct kvm_lapic*) ;
 scalar_t__ nsec_to_cycles (int ,int) ;
 int rdtsc () ;

__attribute__((used)) static bool set_target_expiration(struct kvm_lapic *apic)
{
 ktime_t now;
 u64 tscl = rdtsc();

 now = ktime_get();
 apic->lapic_timer.period = (u64)kvm_lapic_get_reg(apic, APIC_TMICT)
  * APIC_BUS_CYCLE_NS * apic->divide_count;

 if (!apic->lapic_timer.period) {
  apic->lapic_timer.tscdeadline = 0;
  return 0;
 }

 limit_periodic_timer_frequency(apic);

 apic->lapic_timer.tscdeadline = kvm_read_l1_tsc(apic->vcpu, tscl) +
  nsec_to_cycles(apic->vcpu, apic->lapic_timer.period);
 apic->lapic_timer.target_expiration = ktime_add_ns(now, apic->lapic_timer.period);

 return 1;
}
