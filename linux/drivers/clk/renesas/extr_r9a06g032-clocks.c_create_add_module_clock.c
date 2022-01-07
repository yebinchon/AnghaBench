
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {int dummy; } ;
struct device {int dummy; } ;
struct clk {int dummy; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int clk_put (struct clk*) ;
 struct clk* of_clk_get_from_provider (struct of_phandle_args*) ;
 int pm_clk_add_clk (struct device*,struct clk*) ;
 int pm_clk_create (struct device*) ;
 int pm_clk_destroy (struct device*) ;

__attribute__((used)) static int create_add_module_clock(struct of_phandle_args *clkspec,
       struct device *dev)
{
 struct clk *clk;
 int error;

 clk = of_clk_get_from_provider(clkspec);
 if (IS_ERR(clk))
  return PTR_ERR(clk);

 error = pm_clk_create(dev);
 if (error) {
  clk_put(clk);
  return error;
 }

 error = pm_clk_add_clk(dev, clk);
 if (error) {
  pm_clk_destroy(dev);
  clk_put(clk);
 }

 return error;
}
