
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hsdk_pll_clk {int dev; TYPE_1__* pll_devdata; } ;
struct hsdk_pll_cfg {unsigned long rate; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* update_rate ) (struct hsdk_pll_clk*,unsigned long,struct hsdk_pll_cfg const*) ;struct hsdk_pll_cfg* pll_cfg; } ;


 int EINVAL ;
 int dev_err (int ,char*,unsigned long,unsigned long) ;
 int stub1 (struct hsdk_pll_clk*,unsigned long,struct hsdk_pll_cfg const*) ;
 struct hsdk_pll_clk* to_hsdk_pll_clk (struct clk_hw*) ;

__attribute__((used)) static int hsdk_pll_set_rate(struct clk_hw *hw, unsigned long rate,
        unsigned long parent_rate)
{
 int i;
 struct hsdk_pll_clk *clk = to_hsdk_pll_clk(hw);
 const struct hsdk_pll_cfg *pll_cfg = clk->pll_devdata->pll_cfg;

 for (i = 0; pll_cfg[i].rate != 0; i++) {
  if (pll_cfg[i].rate == rate) {
   return clk->pll_devdata->update_rate(clk, rate,
            &pll_cfg[i]);
  }
 }

 dev_err(clk->dev, "invalid rate=%ld, parent_rate=%ld\n", rate,
   parent_rate);

 return -EINVAL;
}
