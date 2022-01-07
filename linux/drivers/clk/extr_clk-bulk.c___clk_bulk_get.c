
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk_bulk_data {int id; int * clk; } ;


 int ENOENT ;
 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int clk_bulk_put (int,struct clk_bulk_data*) ;
 int * clk_get (struct device*,int ) ;
 int dev_err (struct device*,char*,int ,int) ;

__attribute__((used)) static int __clk_bulk_get(struct device *dev, int num_clks,
     struct clk_bulk_data *clks, bool optional)
{
 int ret;
 int i;

 for (i = 0; i < num_clks; i++)
  clks[i].clk = ((void*)0);

 for (i = 0; i < num_clks; i++) {
  clks[i].clk = clk_get(dev, clks[i].id);
  if (IS_ERR(clks[i].clk)) {
   ret = PTR_ERR(clks[i].clk);
   clks[i].clk = ((void*)0);

   if (ret == -ENOENT && optional)
    continue;

   if (ret != -EPROBE_DEFER)
    dev_err(dev, "Failed to get clk '%s': %d\n",
     clks[i].id, ret);
   goto err;
  }
 }

 return 0;

err:
 clk_bulk_put(i, clks);

 return ret;
}
