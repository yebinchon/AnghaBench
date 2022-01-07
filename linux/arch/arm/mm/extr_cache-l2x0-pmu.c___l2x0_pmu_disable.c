
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ L2X0_EVENT_CNT_CTRL ;
 int L2X0_EVENT_CNT_CTRL_ENABLE ;
 scalar_t__ l2x0_base ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void __l2x0_pmu_disable(void)
{
 u32 val = readl_relaxed(l2x0_base + L2X0_EVENT_CNT_CTRL);
 val &= ~L2X0_EVENT_CNT_CTRL_ENABLE;
 writel_relaxed(val, l2x0_base + L2X0_EVENT_CNT_CTRL);
}
