
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int cpufreq_unregister_driver (int *) ;
 int scpi_cpufreq_driver ;
 int * scpi_ops ;

__attribute__((used)) static int scpi_cpufreq_remove(struct platform_device *pdev)
{
 cpufreq_unregister_driver(&scpi_cpufreq_driver);
 scpi_ops = ((void*)0);
 return 0;
}
