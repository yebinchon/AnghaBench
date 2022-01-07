
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int hv_timer_in_use; } ;
struct kvm_lapic {TYPE_2__ lapic_timer; } ;


 int WARN_ON (int) ;
 int restart_apic_timer (struct kvm_lapic*) ;

void kvm_lapic_restart_hv_timer(struct kvm_vcpu *vcpu)
{
 struct kvm_lapic *apic = vcpu->arch.apic;

 WARN_ON(!apic->lapic_timer.hv_timer_in_use);
 restart_apic_timer(apic);
}
