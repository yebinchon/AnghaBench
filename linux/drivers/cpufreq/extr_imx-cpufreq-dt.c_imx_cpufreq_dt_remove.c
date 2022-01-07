
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int cpufreq_dt_pdev ;
 int cpufreq_opp_table ;
 int dev_pm_opp_put_supported_hw (int ) ;
 int platform_device_unregister (int ) ;

__attribute__((used)) static int imx_cpufreq_dt_remove(struct platform_device *pdev)
{
 platform_device_unregister(cpufreq_dt_pdev);
 dev_pm_opp_put_supported_hw(cpufreq_opp_table);

 return 0;
}
