
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ARMV8_PMU_OVSR_MASK ;
 int pmovsclr_el0 ;
 int read_sysreg (int ) ;
 int write_sysreg (int ,int ) ;

__attribute__((used)) static inline u32 armv8pmu_getreset_flags(void)
{
 u32 value;


 value = read_sysreg(pmovsclr_el0);


 value &= ARMV8_PMU_OVSR_MASK;
 write_sysreg(value, pmovsclr_el0);

 return value;
}
