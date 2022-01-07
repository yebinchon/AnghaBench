
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_pm_domain {int flags; int * lock_ops; int mlock; int slock; } ;


 int GENPD_FLAG_IRQ_SAFE ;
 int genpd_mtx_ops ;
 int genpd_spin_ops ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void genpd_lock_init(struct generic_pm_domain *genpd)
{
 if (genpd->flags & GENPD_FLAG_IRQ_SAFE) {
  spin_lock_init(&genpd->slock);
  genpd->lock_ops = &genpd_spin_ops;
 } else {
  mutex_init(&genpd->mlock);
  genpd->lock_ops = &genpd_mtx_ops;
 }
}
