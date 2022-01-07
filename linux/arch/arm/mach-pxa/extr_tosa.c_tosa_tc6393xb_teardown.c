
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int TOSA_GPIO_CARD_VCC_ON ;
 int gpio_free (int ) ;

__attribute__((used)) static void tosa_tc6393xb_teardown(struct platform_device *dev)
{
 gpio_free(TOSA_GPIO_CARD_VCC_ON);
}
