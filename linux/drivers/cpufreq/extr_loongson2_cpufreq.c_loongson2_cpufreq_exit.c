
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int clk; } ;


 int clk_put (int ) ;

__attribute__((used)) static int loongson2_cpufreq_exit(struct cpufreq_policy *policy)
{
 clk_put(policy->clk);
 return 0;
}
