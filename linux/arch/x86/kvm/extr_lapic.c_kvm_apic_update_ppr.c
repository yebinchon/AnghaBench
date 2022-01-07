
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int apic_update_ppr (int ) ;

void kvm_apic_update_ppr(struct kvm_vcpu *vcpu)
{
 apic_update_ppr(vcpu->arch.apic);
}
