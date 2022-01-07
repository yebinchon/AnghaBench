
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct kvm_lapic {int dummy; } ;


 scalar_t__ APIC_BROADCAST ;
 scalar_t__ X2APIC_BROADCAST ;
 scalar_t__ apic_x2apic_mode (struct kvm_lapic*) ;

__attribute__((used)) static bool kvm_apic_broadcast(struct kvm_lapic *apic, u32 mda)
{
 return mda == (apic_x2apic_mode(apic) ?
   X2APIC_BROADCAST : APIC_BROADCAST);
}
