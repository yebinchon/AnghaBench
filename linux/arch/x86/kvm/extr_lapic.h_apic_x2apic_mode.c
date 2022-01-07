
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_lapic {TYPE_2__* vcpu; } ;
struct TYPE_3__ {int apic_base; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;


 int X2APIC_ENABLE ;

__attribute__((used)) static inline int apic_x2apic_mode(struct kvm_lapic *apic)
{
 return apic->vcpu->arch.apic_base & X2APIC_ENABLE;
}
