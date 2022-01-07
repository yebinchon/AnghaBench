
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ccu_common {scalar_t__ reg; scalar_t__ base; } ;


 int readl (scalar_t__) ;

int ccu_gate_helper_is_enabled(struct ccu_common *common, u32 gate)
{
 if (!gate)
  return 1;

 return readl(common->base + common->reg) & gate;
}
