
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int apic_find_highest_irr (int ) ;

int kvm_lapic_find_highest_irr(struct kvm_vcpu *vcpu)
{





 return apic_find_highest_irr(vcpu->arch.apic);
}
