
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int cpufreq_unregister_driver (int *) ;
 int tegra186_cpufreq_driver ;

__attribute__((used)) static int tegra186_cpufreq_remove(struct platform_device *pdev)
{
 cpufreq_unregister_driver(&tegra186_cpufreq_driver);

 return 0;
}
