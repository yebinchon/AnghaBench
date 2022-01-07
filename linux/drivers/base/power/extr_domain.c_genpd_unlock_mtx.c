
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_pm_domain {int mlock; } ;


 void mutex_unlock (int *) ;

__attribute__((used)) static void genpd_unlock_mtx(struct generic_pm_domain *genpd)
{
 return mutex_unlock(&genpd->mlock);
}
