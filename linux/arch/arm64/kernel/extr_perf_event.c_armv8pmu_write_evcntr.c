
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int armv8pmu_select_counter (int) ;
 int pmxevcntr_el0 ;
 int write_sysreg (int ,int ) ;

__attribute__((used)) static inline void armv8pmu_write_evcntr(int idx, u32 value)
{
 armv8pmu_select_counter(idx);
 write_sysreg(value, pmxevcntr_el0);
}
