
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_pm_domain {int dummy; } ;
struct device {int pm_domain; } ;


 int EINVAL ;
 struct generic_pm_domain* ERR_PTR (int ) ;
 scalar_t__ IS_ERR_OR_NULL (int ) ;
 struct generic_pm_domain* pd_to_genpd (int ) ;

__attribute__((used)) static struct generic_pm_domain *dev_to_genpd(struct device *dev)
{
 if (IS_ERR_OR_NULL(dev->pm_domain))
  return ERR_PTR(-EINVAL);

 return pd_to_genpd(dev->pm_domain);
}
