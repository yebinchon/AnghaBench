
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {scalar_t__ enable_reg; int enable_mask; } ;


 scalar_t__ mcs814x_sysdbg_base ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int clk_local_onoff_enable(struct clk *clk, int enable)
{
 u32 tmp;


 if (!clk->enable_reg)
  return 0;

 tmp = readl_relaxed(mcs814x_sysdbg_base + clk->enable_reg);
 if (!enable)
  tmp &= ~clk->enable_mask;
 else
  tmp |= clk->enable_mask;

 writel_relaxed(tmp, mcs814x_sysdbg_base + clk->enable_reg);

 return 0;
}
