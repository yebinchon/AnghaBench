
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct mmc_phase {int offset; int reg; } ;
struct clk_hw {struct clk* clk; } ;
struct clk {int dummy; } ;


 int DIV_ROUND_CLOSEST (int,int) ;
 int EINVAL ;
 struct clk* clk_get_parent (struct clk*) ;
 unsigned int clk_get_rate (struct clk*) ;
 int readl (int ) ;
 struct mmc_phase* to_mmc_phase (struct clk_hw*) ;

__attribute__((used)) static int mmc_get_phase(struct clk_hw *hw)
{
 struct clk *mmc, *mmc_parent, *clk = hw->clk;
 struct mmc_phase *phase = to_mmc_phase(hw);
 unsigned int mmc_rate, mmc_parent_rate;
 u16 step, mmc_div;
 u32 value;
 u8 delay;

 value = readl(phase->reg);
 delay = (value >> phase->offset) & 0x3;

 if (!delay)
  return 180;


 mmc = clk_get_parent(clk);
 if (!mmc)
  return -EINVAL;


 mmc_rate = clk_get_rate(mmc);
 if (!mmc_rate)
  return -EINVAL;


 mmc_parent = clk_get_parent(mmc);
 if (!mmc_parent)
  return -EINVAL;


 mmc_parent_rate = clk_get_rate(mmc_parent);
 if (!mmc_parent_rate)
  return -EINVAL;


 mmc_div = mmc_parent_rate / mmc_rate;

 step = DIV_ROUND_CLOSEST(360, mmc_div);
 return delay * step;
}
