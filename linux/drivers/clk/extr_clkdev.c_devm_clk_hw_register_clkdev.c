
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk_lookup {int dummy; } ;
struct clk_hw {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_clkdev_release ;
 int devres_add (struct device*,struct clk_lookup**) ;
 struct clk_lookup** devres_alloc (int ,int,int ) ;
 int devres_free (struct clk_lookup**) ;
 int do_clk_register_clkdev (struct clk_hw*,struct clk_lookup**,char const*,char const*) ;

int devm_clk_hw_register_clkdev(struct device *dev, struct clk_hw *hw,
    const char *con_id, const char *dev_id)
{
 int rval = -ENOMEM;
 struct clk_lookup **cl;

 cl = devres_alloc(devm_clkdev_release, sizeof(*cl), GFP_KERNEL);
 if (cl) {
  rval = do_clk_register_clkdev(hw, cl, con_id, dev_id);
  if (!rval)
   devres_add(dev, cl);
  else
   devres_free(cl);
 }
 return rval;
}
