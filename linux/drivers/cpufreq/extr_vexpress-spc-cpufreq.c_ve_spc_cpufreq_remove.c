
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int bL_cpufreq_unregister (int *) ;
 int ve_spc_cpufreq_ops ;

__attribute__((used)) static int ve_spc_cpufreq_remove(struct platform_device *pdev)
{
 bL_cpufreq_unregister(&ve_spc_cpufreq_ops);
 return 0;
}
