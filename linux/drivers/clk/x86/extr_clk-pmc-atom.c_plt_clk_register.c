
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pmc_clk_data {scalar_t__ critical; scalar_t__ base; } ;
struct platform_device {int dev; } ;
struct TYPE_4__ {struct clk_init_data* init; } ;
struct clk_plt {int lookup; TYPE_1__ hw; int lock; scalar_t__ reg; } ;
struct clk_init_data {char const** parent_names; int num_parents; int name; int flags; int * ops; } ;


 int CLK_IS_CRITICAL ;
 int ENOMEM ;
 struct clk_plt* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int PLT_CLK_NAME_BASE ;
 scalar_t__ PMC_CLK_CTL_OFFSET ;
 int PMC_CLK_CTL_SIZE ;
 int clkdev_hw_create (TYPE_1__*,int ,int *) ;
 int devm_clk_hw_register (int *,TYPE_1__*) ;
 struct clk_plt* devm_kzalloc (int *,int,int ) ;
 int kasprintf (int ,char*,int ,int) ;
 int kfree (int ) ;
 scalar_t__ plt_clk_is_enabled (TYPE_1__*) ;
 int plt_clk_ops ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct clk_plt *plt_clk_register(struct platform_device *pdev, int id,
     const struct pmc_clk_data *pmc_data,
     const char **parent_names,
     int num_parents)
{
 struct clk_plt *pclk;
 struct clk_init_data init;
 int ret;

 pclk = devm_kzalloc(&pdev->dev, sizeof(*pclk), GFP_KERNEL);
 if (!pclk)
  return ERR_PTR(-ENOMEM);

 init.name = kasprintf(GFP_KERNEL, "%s_%d", PLT_CLK_NAME_BASE, id);
 init.ops = &plt_clk_ops;
 init.flags = 0;
 init.parent_names = parent_names;
 init.num_parents = num_parents;

 pclk->hw.init = &init;
 pclk->reg = pmc_data->base + PMC_CLK_CTL_OFFSET + id * PMC_CLK_CTL_SIZE;
 spin_lock_init(&pclk->lock);






 if (pmc_data->critical && plt_clk_is_enabled(&pclk->hw))
  init.flags |= CLK_IS_CRITICAL;

 ret = devm_clk_hw_register(&pdev->dev, &pclk->hw);
 if (ret) {
  pclk = ERR_PTR(ret);
  goto err_free_init;
 }

 pclk->lookup = clkdev_hw_create(&pclk->hw, init.name, ((void*)0));
 if (!pclk->lookup) {
  pclk = ERR_PTR(-ENOMEM);
  goto err_free_init;
 }

err_free_init:
 kfree(init.name);
 return pclk;
}
