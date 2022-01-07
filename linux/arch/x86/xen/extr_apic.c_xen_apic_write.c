
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ APIC_LVTPC ;
 int WARN (int,char*,scalar_t__,scalar_t__) ;
 int pmu_apic_update (scalar_t__) ;

__attribute__((used)) static void xen_apic_write(u32 reg, u32 val)
{
 if (reg == APIC_LVTPC) {
  (void)pmu_apic_update(reg);
  return;
 }


 WARN(1,"register: %x, value: %x\n", reg, val);
}
