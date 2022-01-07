
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_device {TYPE_1__* pdev; } ;
struct of_phandle_args {int np; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int ENODEV ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct clk*) ;
 int clk_add_alias (char const*,int *,char const*,int *) ;
 struct clk* clk_get_sys (int *,char const*) ;
 int clk_put (struct clk*) ;
 int clk_register_clkdev (struct clk*,char const*,int *) ;
 int dev_dbg (int *,char*,char const*,...) ;
 int dev_err (int *,char*,char const*) ;
 int * dev_name (int *) ;
 struct clk* of_clk_get_from_provider (struct of_phandle_args*) ;
 int of_find_node_by_name (int *,char const*) ;

__attribute__((used)) static void _add_clkdev(struct omap_device *od, const char *clk_alias,
         const char *clk_name)
{
 struct clk *r;
 int rc;

 if (!clk_alias || !clk_name)
  return;

 dev_dbg(&od->pdev->dev, "Creating %s -> %s\n", clk_alias, clk_name);

 r = clk_get_sys(dev_name(&od->pdev->dev), clk_alias);
 if (!IS_ERR(r)) {
  dev_dbg(&od->pdev->dev,
    "alias %s already exists\n", clk_alias);
  clk_put(r);
  return;
 }

 r = clk_get_sys(((void*)0), clk_name);

 if (IS_ERR(r)) {
  struct of_phandle_args clkspec;

  clkspec.np = of_find_node_by_name(((void*)0), clk_name);

  r = of_clk_get_from_provider(&clkspec);

  rc = clk_register_clkdev(r, clk_alias,
      dev_name(&od->pdev->dev));
 } else {
  rc = clk_add_alias(clk_alias, dev_name(&od->pdev->dev),
       clk_name, ((void*)0));
 }

 if (rc) {
  if (rc == -ENODEV || rc == -ENOMEM)
   dev_err(&od->pdev->dev,
    "clkdev_alloc for %s failed\n", clk_alias);
  else
   dev_err(&od->pdev->dev,
    "clk_get for %s failed\n", clk_name);
 }
}
