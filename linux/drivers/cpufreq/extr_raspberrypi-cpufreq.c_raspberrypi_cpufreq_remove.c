
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct device {int dummy; } ;


 int cpufreq_dt ;
 int dev_pm_opp_remove_all_dynamic (struct device*) ;
 struct device* get_cpu_device (int ) ;
 int platform_device_unregister (int ) ;

__attribute__((used)) static int raspberrypi_cpufreq_remove(struct platform_device *pdev)
{
 struct device *cpu_dev;

 cpu_dev = get_cpu_device(0);
 if (cpu_dev)
  dev_pm_opp_remove_all_dynamic(cpu_dev);

 platform_device_unregister(cpufreq_dt);

 return 0;
}
