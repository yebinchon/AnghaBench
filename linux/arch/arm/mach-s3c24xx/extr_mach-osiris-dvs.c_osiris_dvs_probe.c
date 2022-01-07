
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int CPUFREQ_TRANSITION_NOTIFIER ;
 int OSIRIS_GPIO_DVS ;
 int cpufreq_register_notifier (int *,int ) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int gpio_direction_output (int ,int) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;
 int osiris_dvs_nb ;
 int osiris_dvs_tps_setdvs (int) ;

__attribute__((used)) static int osiris_dvs_probe(struct platform_device *pdev)
{
 int ret;

 dev_info(&pdev->dev, "initialising\n");

 ret = gpio_request(OSIRIS_GPIO_DVS, "osiris-dvs");
 if (ret) {
  dev_err(&pdev->dev, "cannot claim gpio\n");
  goto err_nogpio;
 }


 gpio_direction_output(OSIRIS_GPIO_DVS, 1);

 ret = cpufreq_register_notifier(&osiris_dvs_nb,
     CPUFREQ_TRANSITION_NOTIFIER);
 if (ret) {
  dev_err(&pdev->dev, "failed to register with cpufreq\n");
  goto err_nofreq;
 }

 osiris_dvs_tps_setdvs(1);

 return 0;

err_nofreq:
 gpio_free(OSIRIS_GPIO_DVS);

err_nogpio:
 return ret;
}
