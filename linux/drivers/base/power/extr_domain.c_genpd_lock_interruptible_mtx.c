
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_pm_domain {int mlock; } ;


 int mutex_lock_interruptible (int *) ;

__attribute__((used)) static int genpd_lock_interruptible_mtx(struct generic_pm_domain *genpd)
{
 return mutex_lock_interruptible(&genpd->mlock);
}
