
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_lapic {int dummy; } ;


 scalar_t__ apic_x2apic_mode (struct kvm_lapic*) ;
 scalar_t__ kvm_apic_broadcast (struct kvm_lapic*,int) ;
 int kvm_x2apic_id (struct kvm_lapic*) ;
 int kvm_xapic_id (struct kvm_lapic*) ;

__attribute__((used)) static bool kvm_apic_match_physical_addr(struct kvm_lapic *apic, u32 mda)
{
 if (kvm_apic_broadcast(apic, mda))
  return 1;

 if (apic_x2apic_mode(apic))
  return mda == kvm_x2apic_id(apic);







 if (kvm_x2apic_id(apic) > 0xff && mda == kvm_x2apic_id(apic))
  return 1;

 return mda == kvm_xapic_id(apic);
}
