
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int GPIO_PTB3 ;
 int gpio_get_value (int ) ;

__attribute__((used)) static int usbhs_get_id(struct platform_device *pdev)
{
 return gpio_get_value(GPIO_PTB3);
}
