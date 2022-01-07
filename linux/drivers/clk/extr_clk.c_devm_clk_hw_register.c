
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk_hw {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int clk_hw_register (struct device*,struct clk_hw*) ;
 int devm_clk_hw_release ;
 int devres_add (struct device*,struct clk_hw**) ;
 struct clk_hw** devres_alloc (int ,int,int ) ;
 int devres_free (struct clk_hw**) ;

int devm_clk_hw_register(struct device *dev, struct clk_hw *hw)
{
 struct clk_hw **hwp;
 int ret;

 hwp = devres_alloc(devm_clk_hw_release, sizeof(*hwp), GFP_KERNEL);
 if (!hwp)
  return -ENOMEM;

 ret = clk_hw_register(dev, hw);
 if (!ret) {
  *hwp = hw;
  devres_add(dev, hwp);
 } else {
  devres_free(hwp);
 }

 return ret;
}
