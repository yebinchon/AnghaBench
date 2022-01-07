
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_lapic {int dummy; } ;


 int APIC_DFR ;


 int APIC_LDR ;
 int GET_APIC_LOGICAL_ID (int) ;
 scalar_t__ apic_x2apic_mode (struct kvm_lapic*) ;
 scalar_t__ kvm_apic_broadcast (struct kvm_lapic*,int) ;
 int kvm_lapic_get_reg (struct kvm_lapic*,int ) ;

__attribute__((used)) static bool kvm_apic_match_logical_addr(struct kvm_lapic *apic, u32 mda)
{
 u32 logical_id;

 if (kvm_apic_broadcast(apic, mda))
  return 1;

 logical_id = kvm_lapic_get_reg(apic, APIC_LDR);

 if (apic_x2apic_mode(apic))
  return ((logical_id >> 16) == (mda >> 16))
         && (logical_id & mda & 0xffff) != 0;

 logical_id = GET_APIC_LOGICAL_ID(logical_id);

 switch (kvm_lapic_get_reg(apic, APIC_DFR)) {
 case 128:
  return (logical_id & mda) != 0;
 case 129:
  return ((logical_id >> 4) == (mda >> 4))
         && (logical_id & mda & 0xf) != 0;
 default:
  return 0;
 }
}
