
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ARMV8_IDX_TO_COUNTER (int) ;
 int BIT (int ) ;
 int pmcntenclr_el0 ;
 int write_sysreg (int ,int ) ;

__attribute__((used)) static inline int armv8pmu_disable_counter(int idx)
{
 u32 counter = ARMV8_IDX_TO_COUNTER(idx);
 write_sysreg(BIT(counter), pmcntenclr_el0);
 return idx;
}
