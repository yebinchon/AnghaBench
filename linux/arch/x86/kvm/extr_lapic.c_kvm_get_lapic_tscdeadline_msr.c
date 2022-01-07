
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int tscdeadline; } ;
struct kvm_lapic {TYPE_2__ lapic_timer; } ;


 int apic_lvtt_tscdeadline (struct kvm_lapic*) ;
 int lapic_in_kernel (struct kvm_vcpu*) ;

u64 kvm_get_lapic_tscdeadline_msr(struct kvm_vcpu *vcpu)
{
 struct kvm_lapic *apic = vcpu->arch.apic;

 if (!lapic_in_kernel(vcpu) ||
  !apic_lvtt_tscdeadline(apic))
  return 0;

 return apic->lapic_timer.tscdeadline;
}
