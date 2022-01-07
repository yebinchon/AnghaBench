
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_pm_domain {int power_off_work; } ;


 int pm_wq ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void genpd_queue_power_off_work(struct generic_pm_domain *genpd)
{
 queue_work(pm_wq, &genpd->power_off_work);
}
