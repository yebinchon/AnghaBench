
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_3__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {scalar_t__ expired_tscdeadline; scalar_t__ advance_expire_delta; } ;
struct kvm_lapic {TYPE_2__ lapic_timer; } ;


 int __wait_lapic_expire (struct kvm_vcpu*,scalar_t__) ;
 int adjust_lapic_timer_advance (struct kvm_vcpu*,scalar_t__) ;
 scalar_t__ kvm_read_l1_tsc (struct kvm_vcpu*,int ) ;
 scalar_t__ lapic_timer_advance_dynamic ;
 int rdtsc () ;

__attribute__((used)) static void __kvm_wait_lapic_expire(struct kvm_vcpu *vcpu)
{
 struct kvm_lapic *apic = vcpu->arch.apic;
 u64 guest_tsc, tsc_deadline;

 if (apic->lapic_timer.expired_tscdeadline == 0)
  return;

 tsc_deadline = apic->lapic_timer.expired_tscdeadline;
 apic->lapic_timer.expired_tscdeadline = 0;
 guest_tsc = kvm_read_l1_tsc(vcpu, rdtsc());
 apic->lapic_timer.advance_expire_delta = guest_tsc - tsc_deadline;

 if (guest_tsc < tsc_deadline)
  __wait_lapic_expire(vcpu, tsc_deadline - guest_tsc);

 if (lapic_timer_advance_dynamic)
  adjust_lapic_timer_advance(vcpu, apic->lapic_timer.advance_expire_delta);
}
