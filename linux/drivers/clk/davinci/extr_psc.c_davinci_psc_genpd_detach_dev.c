
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_pm_domain {int dummy; } ;
struct device {int dummy; } ;
struct davinci_lpsc_clk {int * genpd_clk; } ;


 int pm_clk_destroy (struct device*) ;
 int pm_clk_remove_clk (struct device*,int *) ;
 struct davinci_lpsc_clk* to_davinci_lpsc_clk (struct generic_pm_domain*) ;

__attribute__((used)) static void davinci_psc_genpd_detach_dev(struct generic_pm_domain *pm_domain,
      struct device *dev)
{
 struct davinci_lpsc_clk *lpsc = to_davinci_lpsc_clk(pm_domain);

 pm_clk_remove_clk(dev, lpsc->genpd_clk);
 pm_clk_destroy(dev);

 lpsc->genpd_clk = ((void*)0);
}
