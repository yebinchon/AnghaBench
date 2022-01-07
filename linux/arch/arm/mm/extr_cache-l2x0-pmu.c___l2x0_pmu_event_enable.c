
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int L2X0_EVENT_CNT_CFG_INT_DISABLED ;
 int L2X0_EVENT_CNT_CFG_SRC_SHIFT ;
 int l2x0_pmu_counter_config_write (int,int) ;

__attribute__((used)) static void __l2x0_pmu_event_enable(int idx, u32 event)
{
 u32 val;

 val = event << L2X0_EVENT_CNT_CFG_SRC_SHIFT;
 val |= L2X0_EVENT_CNT_CFG_INT_DISABLED;
 l2x0_pmu_counter_config_write(idx, val);
}
