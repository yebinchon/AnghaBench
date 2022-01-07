
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_pm_domain {int flags; int detach_dev; int attach_dev; int name; } ;
struct device_node {int name; } ;
struct device {struct device_node* of_node; } ;


 int ENOMEM ;
 int GENPD_FLAG_ACTIVE_WAKEUP ;
 int GENPD_FLAG_ALWAYS_ON ;
 int GENPD_FLAG_PM_CLK ;
 int GFP_KERNEL ;
 struct generic_pm_domain* devm_kzalloc (struct device*,int,int ) ;
 int of_genpd_add_provider_simple (struct device_node*,struct generic_pm_domain*) ;
 int pm_domain_always_on_gov ;
 int pm_genpd_init (struct generic_pm_domain*,int *,int) ;
 int r9a06g032_attach_dev ;
 int r9a06g032_detach_dev ;

__attribute__((used)) static int r9a06g032_add_clk_domain(struct device *dev)
{
 struct device_node *np = dev->of_node;
 struct generic_pm_domain *pd;

 pd = devm_kzalloc(dev, sizeof(*pd), GFP_KERNEL);
 if (!pd)
  return -ENOMEM;

 pd->name = np->name;
 pd->flags = GENPD_FLAG_PM_CLK | GENPD_FLAG_ALWAYS_ON |
      GENPD_FLAG_ACTIVE_WAKEUP;
 pd->attach_dev = r9a06g032_attach_dev;
 pd->detach_dev = r9a06g032_detach_dev;
 pm_genpd_init(pd, &pm_domain_always_on_gov, 0);

 of_genpd_add_provider_simple(np, pd);
 return 0;
}
