
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct clk_plt_fixed {int clk; int lookup; } ;


 int ENOMEM ;
 struct clk_plt_fixed* ERR_CAST (int ) ;
 struct clk_plt_fixed* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int clk_hw_register_fixed_rate (int *,char const*,char const*,int ,unsigned long) ;
 int clk_hw_unregister_fixed_rate (int ) ;
 int clkdev_hw_create (int ,char const*,int *) ;
 struct clk_plt_fixed* devm_kzalloc (int *,int,int ) ;

__attribute__((used)) static struct clk_plt_fixed *plt_clk_register_fixed_rate(struct platform_device *pdev,
       const char *name,
       const char *parent_name,
       unsigned long fixed_rate)
{
 struct clk_plt_fixed *pclk;

 pclk = devm_kzalloc(&pdev->dev, sizeof(*pclk), GFP_KERNEL);
 if (!pclk)
  return ERR_PTR(-ENOMEM);

 pclk->clk = clk_hw_register_fixed_rate(&pdev->dev, name, parent_name,
            0, fixed_rate);
 if (IS_ERR(pclk->clk))
  return ERR_CAST(pclk->clk);

 pclk->lookup = clkdev_hw_create(pclk->clk, name, ((void*)0));
 if (!pclk->lookup) {
  clk_hw_unregister_fixed_rate(pclk->clk);
  return ERR_PTR(-ENOMEM);
 }

 return pclk;
}
