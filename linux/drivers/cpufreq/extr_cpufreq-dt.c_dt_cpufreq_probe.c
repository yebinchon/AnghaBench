
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct cpufreq_dt_platform_data {scalar_t__ suspend; int resume; scalar_t__ have_governor_per_policy; } ;
struct TYPE_3__ {scalar_t__ suspend; int resume; int flags; } ;


 int CPUFREQ_HAVE_GOVERNOR_PER_POLICY ;
 int cpufreq_register_driver (TYPE_1__*) ;
 int dev_err (int *,char*,int) ;
 struct cpufreq_dt_platform_data* dev_get_platdata (int *) ;
 TYPE_1__ dt_cpufreq_driver ;
 int resources_available () ;

__attribute__((used)) static int dt_cpufreq_probe(struct platform_device *pdev)
{
 struct cpufreq_dt_platform_data *data = dev_get_platdata(&pdev->dev);
 int ret;
 ret = resources_available();
 if (ret)
  return ret;

 if (data) {
  if (data->have_governor_per_policy)
   dt_cpufreq_driver.flags |= CPUFREQ_HAVE_GOVERNOR_PER_POLICY;

  dt_cpufreq_driver.resume = data->resume;
  if (data->suspend)
   dt_cpufreq_driver.suspend = data->suspend;
 }

 ret = cpufreq_register_driver(&dt_cpufreq_driver);
 if (ret)
  dev_err(&pdev->dev, "failed register driver: %d\n", ret);

 return ret;
}
