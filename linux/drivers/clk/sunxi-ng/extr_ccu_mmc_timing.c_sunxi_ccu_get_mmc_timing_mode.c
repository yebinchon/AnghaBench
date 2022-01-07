
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk {int dummy; } ;
struct ccu_common {int features; scalar_t__ reg; scalar_t__ base; } ;


 int CCU_FEATURE_MMC_TIMING_SWITCH ;
 int CCU_MMC_NEW_TIMING_MODE ;
 int ENOTSUPP ;
 struct clk_hw* __clk_get_hw (struct clk*) ;
 struct ccu_common* hw_to_ccu_common (struct clk_hw*) ;
 int readl (scalar_t__) ;

int sunxi_ccu_get_mmc_timing_mode(struct clk *clk)
{
 struct clk_hw *hw = __clk_get_hw(clk);
 struct ccu_common *cm = hw_to_ccu_common(hw);

 if (!(cm->features & CCU_FEATURE_MMC_TIMING_SWITCH))
  return -ENOTSUPP;

 return !!(readl(cm->base + cm->reg) & CCU_MMC_NEW_TIMING_MODE);
}
