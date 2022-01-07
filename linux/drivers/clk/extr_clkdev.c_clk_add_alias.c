
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk_lookup {int dummy; } ;
struct clk {int dummy; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 struct clk* clk_get (struct device*,char const*) ;
 int clk_put (struct clk*) ;
 struct clk_lookup* clkdev_create (struct clk*,char const*,char*,char const*) ;

int clk_add_alias(const char *alias, const char *alias_dev_name,
 const char *con_id, struct device *dev)
{
 struct clk *r = clk_get(dev, con_id);
 struct clk_lookup *l;

 if (IS_ERR(r))
  return PTR_ERR(r);

 l = clkdev_create(r, alias, alias_dev_name ? "%s" : ((void*)0),
     alias_dev_name);
 clk_put(r);

 return l ? 0 : -ENODEV;
}
