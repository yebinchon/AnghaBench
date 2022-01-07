
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_pm_domain {int mlock; } ;


 int mutex_lock (int *) ;

__attribute__((used)) static void genpd_lock_mtx(struct generic_pm_domain *genpd)
{
 mutex_lock(&genpd->mlock);
}
