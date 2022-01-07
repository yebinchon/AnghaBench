
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int TOSA_GPIO_TC6393XB_L3V_ON ;
 int TOSA_GPIO_TC6393XB_REST_IN ;
 int TOSA_GPIO_TC6393XB_SUSPEND ;
 int gpio_free (int ) ;

__attribute__((used)) static int tosa_tc6393xb_disable(struct platform_device *dev)
{
 gpio_free(TOSA_GPIO_TC6393XB_L3V_ON);
 gpio_free(TOSA_GPIO_TC6393XB_SUSPEND);
 gpio_free(TOSA_GPIO_TC6393XB_REST_IN);

 return 0;
}
