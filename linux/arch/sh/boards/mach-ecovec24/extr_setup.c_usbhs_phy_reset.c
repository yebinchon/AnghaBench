
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int GPIO_PTB3 ;
 int GPIO_PTB5 ;
 int gpio_get_value (int ) ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static int usbhs_phy_reset(struct platform_device *pdev)
{

 if (!gpio_get_value(GPIO_PTB3))
  gpio_set_value(GPIO_PTB5, 1);

 return 0;
}
