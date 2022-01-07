
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int armv8pmu_select_counter (int) ;
 int pmxevcntr_el0 ;
 int read_sysreg (int ) ;

__attribute__((used)) static inline u32 armv8pmu_read_evcntr(int idx)
{
 armv8pmu_select_counter(idx);
 return read_sysreg(pmxevcntr_el0);
}
