
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_pm_domain {int dummy; } ;


 int genpd_add_subdomain (struct generic_pm_domain*,struct generic_pm_domain*) ;
 int gpd_list_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int pm_genpd_add_subdomain(struct generic_pm_domain *genpd,
      struct generic_pm_domain *subdomain)
{
 int ret;

 mutex_lock(&gpd_list_lock);
 ret = genpd_add_subdomain(genpd, subdomain);
 mutex_unlock(&gpd_list_lock);

 return ret;
}
