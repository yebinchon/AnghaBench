
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk_hw {int dummy; } ;
struct clk {int dummy; } ;


 int ENOMEM ;
 struct clk* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IS_ERR (struct clk*) ;
 struct clk* clk_register (struct device*,struct clk_hw*) ;
 int devm_clk_release ;
 int devres_add (struct device*,struct clk**) ;
 struct clk** devres_alloc (int ,int,int ) ;
 int devres_free (struct clk**) ;

struct clk *devm_clk_register(struct device *dev, struct clk_hw *hw)
{
 struct clk *clk;
 struct clk **clkp;

 clkp = devres_alloc(devm_clk_release, sizeof(*clkp), GFP_KERNEL);
 if (!clkp)
  return ERR_PTR(-ENOMEM);

 clk = clk_register(dev, hw);
 if (!IS_ERR(clk)) {
  *clkp = clk;
  devres_add(dev, clkp);
 } else {
  devres_free(clkp);
 }

 return clk;
}
