
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gpio_mdio_driver ;
 scalar_t__ gpio_regs ;
 int iounmap (scalar_t__) ;
 int platform_driver_unregister (int *) ;

__attribute__((used)) static void gpio_mdio_exit(void)
{
 platform_driver_unregister(&gpio_mdio_driver);
 if (gpio_regs)
  iounmap(gpio_regs);
}
