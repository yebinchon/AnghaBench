
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;
struct ccu_common {scalar_t__ reg; scalar_t__ base; } ;


 int CCU_MMC_NEW_TIMING_MODE ;
 unsigned long ccu_mp_recalc_rate (struct clk_hw*,unsigned long) ;
 struct ccu_common* hw_to_ccu_common (struct clk_hw*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static unsigned long ccu_mp_mmc_recalc_rate(struct clk_hw *hw,
         unsigned long parent_rate)
{
 unsigned long rate = ccu_mp_recalc_rate(hw, parent_rate);
 struct ccu_common *cm = hw_to_ccu_common(hw);
 u32 val = readl(cm->base + cm->reg);

 if (val & CCU_MMC_NEW_TIMING_MODE)
  return rate / 2;
 return rate;
}
