
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int restart_apic_timer (int ) ;

void kvm_lapic_switch_to_hv_timer(struct kvm_vcpu *vcpu)
{
 restart_apic_timer(vcpu->arch.apic);
}
