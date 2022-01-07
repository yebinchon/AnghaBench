
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int CPUFREQ_TRANSITION_NOTIFIER ;
 int OSIRIS_GPIO_DVS ;
 int cpufreq_unregister_notifier (int *,int ) ;
 int dev_info (int *,char*) ;
 int gpio_free (int ) ;
 int gpio_set_value (int ,int) ;
 int osiris_dvs_nb ;
 int osiris_dvs_tps_setdvs (int) ;

__attribute__((used)) static int osiris_dvs_remove(struct platform_device *pdev)
{
 dev_info(&pdev->dev, "exiting\n");


 gpio_set_value(OSIRIS_GPIO_DVS, 1);
 osiris_dvs_tps_setdvs(0);

 cpufreq_unregister_notifier(&osiris_dvs_nb,
        CPUFREQ_TRANSITION_NOTIFIER);

 gpio_free(OSIRIS_GPIO_DVS);

 return 0;
}
