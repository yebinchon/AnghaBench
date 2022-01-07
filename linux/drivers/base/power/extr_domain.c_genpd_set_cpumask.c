
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_pm_domain {int dummy; } ;


 int genpd_update_cpumask (struct generic_pm_domain*,int,int,int ) ;

__attribute__((used)) static void genpd_set_cpumask(struct generic_pm_domain *genpd, int cpu)
{
 if (cpu >= 0)
  genpd_update_cpumask(genpd, cpu, 1, 0);
}
