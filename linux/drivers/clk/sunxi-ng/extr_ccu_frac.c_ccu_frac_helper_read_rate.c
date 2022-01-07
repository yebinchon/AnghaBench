
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ccu_frac_internal {int* rates; int select; } ;
struct ccu_common {int features; int hw; scalar_t__ reg; scalar_t__ base; } ;


 int CCU_FEATURE_FRACTIONAL ;
 int clk_hw_get_name (int *) ;
 int pr_debug (char*,int ,...) ;
 int readl (scalar_t__) ;

unsigned long ccu_frac_helper_read_rate(struct ccu_common *common,
     struct ccu_frac_internal *cf)
{
 u32 reg;

 pr_debug("%s: Read fractional\n", clk_hw_get_name(&common->hw));

 if (!(common->features & CCU_FEATURE_FRACTIONAL))
  return 0;

 pr_debug("%s: clock is fractional (rates %lu and %lu)\n",
   clk_hw_get_name(&common->hw), cf->rates[0], cf->rates[1]);

 reg = readl(common->base + common->reg);

 pr_debug("%s: clock reg is 0x%x (select is 0x%x)\n",
   clk_hw_get_name(&common->hw), reg, cf->select);

 return (reg & cf->select) ? cf->rates[1] : cf->rates[0];
}
