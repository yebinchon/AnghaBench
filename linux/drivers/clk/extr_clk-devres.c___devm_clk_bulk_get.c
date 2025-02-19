
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk_bulk_devres {int num_clks; struct clk_bulk_data* clks; } ;
struct clk_bulk_data {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int clk_bulk_get (struct device*,int,struct clk_bulk_data*) ;
 int clk_bulk_get_optional (struct device*,int,struct clk_bulk_data*) ;
 int devm_clk_bulk_release ;
 int devres_add (struct device*,struct clk_bulk_devres*) ;
 struct clk_bulk_devres* devres_alloc (int ,int,int ) ;
 int devres_free (struct clk_bulk_devres*) ;

__attribute__((used)) static int __devm_clk_bulk_get(struct device *dev, int num_clks,
          struct clk_bulk_data *clks, bool optional)
{
 struct clk_bulk_devres *devres;
 int ret;

 devres = devres_alloc(devm_clk_bulk_release,
         sizeof(*devres), GFP_KERNEL);
 if (!devres)
  return -ENOMEM;

 if (optional)
  ret = clk_bulk_get_optional(dev, num_clks, clks);
 else
  ret = clk_bulk_get(dev, num_clks, clks);
 if (!ret) {
  devres->clks = clks;
  devres->num_clks = num_clks;
  devres_add(dev, devres);
 } else {
  devres_free(devres);
 }

 return ret;
}
