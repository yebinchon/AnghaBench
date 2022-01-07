
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ARMV8_PMU_EVTYPE_MASK ;
 int armv8pmu_select_counter (int) ;
 int pmxevtyper_el0 ;
 int write_sysreg (int ,int ) ;

__attribute__((used)) static inline void armv8pmu_write_evtype(int idx, u32 val)
{
 armv8pmu_select_counter(idx);
 val &= ARMV8_PMU_EVTYPE_MASK;
 write_sysreg(val, pmxevtyper_el0);
}
