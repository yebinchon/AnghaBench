
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_mmc {int clken_bit; int clken_reg; int div_reg; int div_bits; int div_off; int drv_reg; int drv_bits; int drv_off; int sam_reg; int sam_bits; int sam_off; } ;
struct clk_hw {int dummy; } ;
typedef int DEFINE_SPINLOCK ;


 int EINVAL ;
 int mmc_clk_delay (int,int,int ,int ) ;
 int readl_relaxed (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct clk_mmc* to_mmc (struct clk_hw*) ;
 int writel_relaxed (int,int ) ;

__attribute__((used)) static int mmc_clk_set_timing(struct clk_hw *hw, unsigned long rate)
{
 struct clk_mmc *mclk = to_mmc(hw);
 unsigned long flags;
 u32 sam, drv, div, val;
 static DEFINE_SPINLOCK(mmc_clk_lock);

 switch (rate) {
 case 13000000:
  sam = 3;
  drv = 1;
  div = 1;
  break;
 case 25000000:
  sam = 13;
  drv = 6;
  div = 6;
  break;
 case 50000000:
  sam = 3;
  drv = 6;
  div = 6;
  break;
 case 100000000:
  sam = 6;
  drv = 4;
  div = 6;
  break;
 case 180000000:
  sam = 6;
  drv = 4;
  div = 7;
  break;
 default:
  return -EINVAL;
 }

 spin_lock_irqsave(&mmc_clk_lock, flags);

 val = readl_relaxed(mclk->clken_reg);
 val &= ~(1 << mclk->clken_bit);
 writel_relaxed(val, mclk->clken_reg);

 val = readl_relaxed(mclk->sam_reg);
 val = mmc_clk_delay(val, sam, mclk->sam_off, mclk->sam_bits);
 writel_relaxed(val, mclk->sam_reg);

 val = readl_relaxed(mclk->drv_reg);
 val = mmc_clk_delay(val, drv, mclk->drv_off, mclk->drv_bits);
 writel_relaxed(val, mclk->drv_reg);

 val = readl_relaxed(mclk->div_reg);
 val = mmc_clk_delay(val, div, mclk->div_off, mclk->div_bits);
 writel_relaxed(val, mclk->div_reg);

 val = readl_relaxed(mclk->clken_reg);
 val |= 1 << mclk->clken_bit;
 writel_relaxed(val, mclk->clken_reg);

 spin_unlock_irqrestore(&mmc_clk_lock, flags);

 return 0;
}
