
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_lapic {int dummy; } ;


 int apic_lvtt_period (struct kvm_lapic*) ;

__attribute__((used)) static bool lapic_is_periodic(struct kvm_lapic *apic)
{
 return apic_lvtt_period(apic);
}
