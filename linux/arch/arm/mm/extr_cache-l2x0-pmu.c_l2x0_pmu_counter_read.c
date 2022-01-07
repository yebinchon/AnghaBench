
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ L2X0_EVENT_CNT0_VAL ;
 scalar_t__ l2x0_base ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static u32 l2x0_pmu_counter_read(int idx)
{
 return readl_relaxed(l2x0_base + L2X0_EVENT_CNT0_VAL - 4 * idx);
}
