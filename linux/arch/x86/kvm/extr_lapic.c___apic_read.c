
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_lapic {int dummy; } ;






 unsigned int LAPIC_MMIO_LENGTH ;
 int apic_get_tmcct (struct kvm_lapic*) ;
 int apic_lvtt_tscdeadline (struct kvm_lapic*) ;
 int apic_update_ppr (struct kvm_lapic*) ;
 int kvm_lapic_get_reg (struct kvm_lapic*,unsigned int) ;
 int report_tpr_access (struct kvm_lapic*,int) ;

__attribute__((used)) static u32 __apic_read(struct kvm_lapic *apic, unsigned int offset)
{
 u32 val = 0;

 if (offset >= LAPIC_MMIO_LENGTH)
  return 0;

 switch (offset) {
 case 131:
  break;

 case 128:
  if (apic_lvtt_tscdeadline(apic))
   return 0;

  val = apic_get_tmcct(apic);
  break;
 case 130:
  apic_update_ppr(apic);
  val = kvm_lapic_get_reg(apic, offset);
  break;
 case 129:
  report_tpr_access(apic, 0);

 default:
  val = kvm_lapic_get_reg(apic, offset);
  break;
 }

 return val;
}
