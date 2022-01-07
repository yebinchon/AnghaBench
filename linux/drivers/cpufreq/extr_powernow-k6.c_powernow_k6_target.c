
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {int dummy; } ;
struct TYPE_2__ {scalar_t__ driver_data; } ;


 int EINVAL ;
 TYPE_1__* clock_ratio ;
 scalar_t__ max_multiplier ;
 int powernow_k6_set_cpu_multiplier (unsigned int) ;
 int pr_err (char*) ;

__attribute__((used)) static int powernow_k6_target(struct cpufreq_policy *policy,
  unsigned int best_i)
{

 if (clock_ratio[best_i].driver_data > max_multiplier) {
  pr_err("invalid target frequency\n");
  return -EINVAL;
 }

 powernow_k6_set_cpu_multiplier(best_i);

 return 0;
}
