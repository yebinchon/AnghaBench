
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int OSIRIS_GPIO_DVS ;
 int cur_dvs ;
 int gpio_set_value (int ,int) ;
 int osiris_dvs_tps_setdvs (int) ;

__attribute__((used)) static int osiris_dvs_suspend(struct device *dev)
{
 gpio_set_value(OSIRIS_GPIO_DVS, 1);
 osiris_dvs_tps_setdvs(0);
 cur_dvs = 0;

 return 0;
}
