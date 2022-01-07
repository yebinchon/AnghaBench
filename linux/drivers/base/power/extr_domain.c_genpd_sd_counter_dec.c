
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_pm_domain {int sd_count; } ;


 int WARN_ON (int) ;
 int atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static bool genpd_sd_counter_dec(struct generic_pm_domain *genpd)
{
 bool ret = 0;

 if (!WARN_ON(atomic_read(&genpd->sd_count) == 0))
  ret = !!atomic_dec_and_test(&genpd->sd_count);

 return ret;
}
