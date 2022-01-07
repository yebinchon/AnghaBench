
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int clk; } ;


 int clk_put (int ) ;
 int freq_table_free () ;

__attribute__((used)) static int omap_cpu_exit(struct cpufreq_policy *policy)
{
 freq_table_free();
 clk_put(policy->clk);
 return 0;
}
