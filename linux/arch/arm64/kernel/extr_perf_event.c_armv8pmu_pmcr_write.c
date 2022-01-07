
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ARMV8_PMU_PMCR_MASK ;
 int isb () ;
 int pmcr_el0 ;
 int write_sysreg (int ,int ) ;

__attribute__((used)) static inline void armv8pmu_pmcr_write(u32 val)
{
 val &= ARMV8_PMU_PMCR_MASK;
 isb();
 write_sysreg(val, pmcr_el0);
}
