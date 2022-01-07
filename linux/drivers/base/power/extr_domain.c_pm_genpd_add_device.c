
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_pm_domain {int dummy; } ;
struct device {int dummy; } ;


 int genpd_add_device (struct generic_pm_domain*,struct device*,struct device*) ;
 int gpd_list_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int pm_genpd_add_device(struct generic_pm_domain *genpd, struct device *dev)
{
 int ret;

 mutex_lock(&gpd_list_lock);
 ret = genpd_add_device(genpd, dev, dev);
 mutex_unlock(&gpd_list_lock);

 return ret;
}
