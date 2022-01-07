
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cpumask {int dummy; } ;


 int cpumask_first (struct cpumask const*) ;
 scalar_t__ dev_pm_opp_get_opp_count (struct device*) ;
 struct device* get_cpu_device (int ) ;

__attribute__((used)) static int ve_spc_init_opp_table(const struct cpumask *cpumask)
{
 struct device *cpu_dev = get_cpu_device(cpumask_first(cpumask));




 return dev_pm_opp_get_opp_count(cpu_dev) <= 0;
}
