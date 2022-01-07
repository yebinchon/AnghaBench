
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_pm_domain {int sd_count; } ;


 int atomic_inc (int *) ;
 int smp_mb__after_atomic () ;

__attribute__((used)) static void genpd_sd_counter_inc(struct generic_pm_domain *genpd)
{
 atomic_inc(&genpd->sd_count);
 smp_mb__after_atomic();
}
