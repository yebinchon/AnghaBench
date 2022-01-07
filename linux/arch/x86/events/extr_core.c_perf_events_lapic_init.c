
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int apic; } ;


 int APIC_DM_NMI ;
 int APIC_LVTPC ;
 int apic_write (int ,int ) ;
 TYPE_1__ x86_pmu ;
 int x86_pmu_initialized () ;

void perf_events_lapic_init(void)
{
 if (!x86_pmu.apic || !x86_pmu_initialized())
  return;




 apic_write(APIC_LVTPC, APIC_DM_NMI);
}
