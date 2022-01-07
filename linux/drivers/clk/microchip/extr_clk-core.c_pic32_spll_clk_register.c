
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pic32_sys_pll_data {int lock_mask; scalar_t__ status_reg; scalar_t__ ctrl_reg; int init_data; } ;
struct TYPE_2__ {int * init; } ;
struct pic32_sys_pll {int idiv; TYPE_1__ hw; scalar_t__ ctrl_reg; int lock_mask; scalar_t__ status_reg; struct pic32_clk_common* core; } ;
struct pic32_clk_common {int dev; scalar_t__ iobase; } ;
struct clk {int dummy; } ;


 int ENOMEM ;
 struct clk* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PLL_IDIV_MASK ;
 int PLL_IDIV_SHIFT ;
 int dev_err (int ,char*) ;
 struct clk* devm_clk_register (int ,TYPE_1__*) ;
 struct pic32_sys_pll* devm_kzalloc (int ,int,int ) ;
 int readl (scalar_t__) ;

struct clk *pic32_spll_clk_register(const struct pic32_sys_pll_data *data,
        struct pic32_clk_common *core)
{
 struct pic32_sys_pll *spll;
 struct clk *clk;

 spll = devm_kzalloc(core->dev, sizeof(*spll), GFP_KERNEL);
 if (!spll)
  return ERR_PTR(-ENOMEM);

 spll->core = core;
 spll->hw.init = &data->init_data;
 spll->ctrl_reg = data->ctrl_reg + core->iobase;
 spll->status_reg = data->status_reg + core->iobase;
 spll->lock_mask = data->lock_mask;


 spll->idiv = (readl(spll->ctrl_reg) >> PLL_IDIV_SHIFT) & PLL_IDIV_MASK;
 spll->idiv += 1;

 clk = devm_clk_register(core->dev, &spll->hw);
 if (IS_ERR(clk))
  dev_err(core->dev, "sys_pll: clk_register() failed\n");

 return clk;
}
