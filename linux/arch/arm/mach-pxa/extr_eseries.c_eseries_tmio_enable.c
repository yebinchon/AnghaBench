
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int GPIO_ESERIES_TMIO_PCLR ;
 int GPIO_ESERIES_TMIO_SUSPEND ;
 int gpio_set_value (int ,int) ;
 int msleep (int) ;

int eseries_tmio_enable(struct platform_device *dev)
{

 gpio_set_value(GPIO_ESERIES_TMIO_SUSPEND, 0);
 gpio_set_value(GPIO_ESERIES_TMIO_PCLR, 0);
 msleep(1);
 gpio_set_value(GPIO_ESERIES_TMIO_SUSPEND, 1);
 msleep(1);
 gpio_set_value(GPIO_ESERIES_TMIO_PCLR, 1);
 msleep(1);
 return 0;
}
