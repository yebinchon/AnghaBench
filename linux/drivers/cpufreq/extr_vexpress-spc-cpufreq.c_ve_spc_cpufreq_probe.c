
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int bL_cpufreq_register (int *) ;
 int ve_spc_cpufreq_ops ;

__attribute__((used)) static int ve_spc_cpufreq_probe(struct platform_device *pdev)
{
 return bL_cpufreq_register(&ve_spc_cpufreq_ops);
}
