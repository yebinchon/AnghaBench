
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ARMV8_PMU_OVERFLOWED_MASK ;

__attribute__((used)) static inline int armv8pmu_has_overflowed(u32 pmovsr)
{
 return pmovsr & ARMV8_PMU_OVERFLOWED_MASK;
}
