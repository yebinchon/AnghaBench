
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {int np; } ;
struct generic_pm_domain {int dummy; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct clk {int dummy; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int clk_put (struct clk*) ;
 struct clk* of_clk_get_from_provider (struct of_phandle_args*) ;
 scalar_t__ of_device_is_compatible (int ,char*) ;
 scalar_t__ of_node_name_eq (int ,char*) ;
 int of_node_put (int ) ;
 int of_parse_phandle_with_args (struct device_node*,char*,char*,int,struct of_phandle_args*) ;
 int pm_clk_add_clk (struct device*,struct clk*) ;
 int pm_clk_create (struct device*) ;
 int pm_clk_destroy (struct device*) ;

int cpg_mstp_attach_dev(struct generic_pm_domain *unused, struct device *dev)
{
 struct device_node *np = dev->of_node;
 struct of_phandle_args clkspec;
 struct clk *clk;
 int i = 0;
 int error;

 while (!of_parse_phandle_with_args(np, "clocks", "#clock-cells", i,
        &clkspec)) {
  if (of_device_is_compatible(clkspec.np,
         "renesas,cpg-mstp-clocks"))
   goto found;


  if (of_node_name_eq(clkspec.np, "zb_clk"))
   goto found;

  of_node_put(clkspec.np);
  i++;
 }

 return 0;

found:
 clk = of_clk_get_from_provider(&clkspec);
 of_node_put(clkspec.np);

 if (IS_ERR(clk))
  return PTR_ERR(clk);

 error = pm_clk_create(dev);
 if (error)
  goto fail_put;

 error = pm_clk_add_clk(dev, clk);
 if (error)
  goto fail_destroy;

 return 0;

fail_destroy:
 pm_clk_destroy(dev);
fail_put:
 clk_put(clk);
 return error;
}
