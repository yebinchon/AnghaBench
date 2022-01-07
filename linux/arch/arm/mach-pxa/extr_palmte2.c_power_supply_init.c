
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int GPIO_NR_PALMTE2_POWER_DETECT ;
 int gpio_direction_input (int ) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;

__attribute__((used)) static int power_supply_init(struct device *dev)
{
 int ret;

 ret = gpio_request(GPIO_NR_PALMTE2_POWER_DETECT, "CABLE_STATE_AC");
 if (ret)
  goto err1;
 ret = gpio_direction_input(GPIO_NR_PALMTE2_POWER_DETECT);
 if (ret)
  goto err2;

 return 0;

err2:
 gpio_free(GPIO_NR_PALMTE2_POWER_DETECT);
err1:
 return ret;
}
