
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int pmcr_el0 ;
 int read_sysreg (int ) ;

__attribute__((used)) static inline u32 armv8pmu_pmcr_read(void)
{
 return read_sysreg(pmcr_el0);
}
