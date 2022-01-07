
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int cpufreq_qcom_hw_driver ;
 int cpufreq_unregister_driver (int *) ;

__attribute__((used)) static int qcom_cpufreq_hw_driver_remove(struct platform_device *pdev)
{
 return cpufreq_unregister_driver(&cpufreq_qcom_hw_driver);
}
