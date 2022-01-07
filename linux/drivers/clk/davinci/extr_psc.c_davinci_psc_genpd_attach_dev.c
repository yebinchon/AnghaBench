
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_pm_domain {int dummy; } ;
struct device {int dummy; } ;
struct davinci_lpsc_clk {struct clk* genpd_clk; int hw; int dev; } ;
struct clk {int dummy; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int best_dev_name (int ) ;
 struct clk* clk_get_sys (int ,int ) ;
 int clk_hw_get_name (int *) ;
 int clk_put (struct clk*) ;
 int pm_clk_add_clk (struct device*,struct clk*) ;
 int pm_clk_create (struct device*) ;
 int pm_clk_destroy (struct device*) ;
 struct davinci_lpsc_clk* to_davinci_lpsc_clk (struct generic_pm_domain*) ;

__attribute__((used)) static int davinci_psc_genpd_attach_dev(struct generic_pm_domain *pm_domain,
     struct device *dev)
{
 struct davinci_lpsc_clk *lpsc = to_davinci_lpsc_clk(pm_domain);
 struct clk *clk;
 int ret;





 clk = clk_get_sys(best_dev_name(lpsc->dev), clk_hw_get_name(&lpsc->hw));
 if (IS_ERR(clk))
  return (PTR_ERR(clk));

 ret = pm_clk_create(dev);
 if (ret < 0)
  goto fail_clk_put;

 ret = pm_clk_add_clk(dev, clk);
 if (ret < 0)
  goto fail_pm_clk_destroy;

 lpsc->genpd_clk = clk;

 return 0;

fail_pm_clk_destroy:
 pm_clk_destroy(dev);
fail_clk_put:
 clk_put(clk);

 return ret;
}
