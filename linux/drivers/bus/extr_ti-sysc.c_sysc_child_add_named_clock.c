
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysc {struct device* dev; } ;
struct device {int dummy; } ;
struct clk_lookup {int dummy; } ;
struct clk {int dummy; } ;


 int EEXIST ;
 int ENODEV ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct clk*) ;
 struct clk* clk_get (struct device*,char const*) ;
 int clk_put (struct clk*) ;
 struct clk_lookup* clkdev_create (struct clk*,char const*,int ) ;
 int dev_name (struct device*) ;

__attribute__((used)) static int sysc_child_add_named_clock(struct sysc *ddata,
          struct device *child,
          const char *name)
{
 struct clk *clk;
 struct clk_lookup *l;
 int error = 0;

 if (!name)
  return 0;

 clk = clk_get(child, name);
 if (!IS_ERR(clk)) {
  clk_put(clk);

  return -EEXIST;
 }

 clk = clk_get(ddata->dev, name);
 if (IS_ERR(clk))
  return -ENODEV;

 l = clkdev_create(clk, name, dev_name(child));
 if (!l)
  error = -ENOMEM;

 clk_put(clk);

 return error;
}
