
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hsdk_pll_clk {int dev; TYPE_1__* pll_devdata; } ;
struct hsdk_pll_cfg {unsigned long rate; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {struct hsdk_pll_cfg* pll_cfg; } ;


 long EINVAL ;
 scalar_t__ abs (unsigned long) ;
 int dev_dbg (int ,char*,unsigned long) ;
 struct hsdk_pll_clk* to_hsdk_pll_clk (struct clk_hw*) ;

__attribute__((used)) static long hsdk_pll_round_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long *prate)
{
 int i;
 unsigned long best_rate;
 struct hsdk_pll_clk *clk = to_hsdk_pll_clk(hw);
 const struct hsdk_pll_cfg *pll_cfg = clk->pll_devdata->pll_cfg;

 if (pll_cfg[0].rate == 0)
  return -EINVAL;

 best_rate = pll_cfg[0].rate;

 for (i = 1; pll_cfg[i].rate != 0; i++) {
  if (abs(rate - pll_cfg[i].rate) < abs(rate - best_rate))
   best_rate = pll_cfg[i].rate;
 }

 dev_dbg(clk->dev, "chosen best rate: %lu\n", best_rate);

 return best_rate;
}
