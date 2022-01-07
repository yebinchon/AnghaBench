
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ L2X0_EVENT_CNT0_CFG ;
 scalar_t__ l2x0_base ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void l2x0_pmu_counter_config_write(int idx, u32 val)
{
 writel_relaxed(val, l2x0_base + L2X0_EVENT_CNT0_CFG - 4 * idx);
}
