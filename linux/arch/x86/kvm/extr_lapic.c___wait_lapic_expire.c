
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct TYPE_6__ {scalar_t__ tsc_scaling_ratio; int virtual_tsc_khz; TYPE_2__* apic; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct TYPE_4__ {unsigned long long timer_advance_ns; } ;
struct TYPE_5__ {TYPE_1__ lapic_timer; } ;


 int __delay (int ) ;
 int do_div (unsigned long long,int ) ;
 scalar_t__ kvm_default_tsc_scaling_ratio ;
 int min (unsigned long long,int ) ;
 int min_t (int ,unsigned long long,unsigned long long) ;
 int ndelay (int ) ;
 int nsec_to_cycles (struct kvm_vcpu*,unsigned long long) ;
 int u32 ;

__attribute__((used)) static inline void __wait_lapic_expire(struct kvm_vcpu *vcpu, u64 guest_cycles)
{
 u64 timer_advance_ns = vcpu->arch.apic->lapic_timer.timer_advance_ns;







 if (vcpu->arch.tsc_scaling_ratio == kvm_default_tsc_scaling_ratio) {
  __delay(min(guest_cycles,
   nsec_to_cycles(vcpu, timer_advance_ns)));
 } else {
  u64 delay_ns = guest_cycles * 1000000ULL;
  do_div(delay_ns, vcpu->arch.virtual_tsc_khz);
  ndelay(min_t(u32, delay_ns, timer_advance_ns));
 }
}
