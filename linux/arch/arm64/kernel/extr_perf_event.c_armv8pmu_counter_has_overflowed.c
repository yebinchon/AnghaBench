
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ARMV8_IDX_TO_COUNTER (int) ;
 int BIT (int ) ;

__attribute__((used)) static inline int armv8pmu_counter_has_overflowed(u32 pmnc, int idx)
{
 return pmnc & BIT(ARMV8_IDX_TO_COUNTER(idx));
}
