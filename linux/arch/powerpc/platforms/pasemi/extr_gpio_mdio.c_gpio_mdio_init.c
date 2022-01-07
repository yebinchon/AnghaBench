
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int ENODEV ;
 int gpio_mdio_driver ;
 int gpio_regs ;
 struct device_node* of_find_compatible_node (int *,int *,char*) ;
 int of_iomap (struct device_node*,int ) ;
 int of_node_put (struct device_node*) ;
 int platform_driver_register (int *) ;

__attribute__((used)) static int gpio_mdio_init(void)
{
 struct device_node *np;

 np = of_find_compatible_node(((void*)0), ((void*)0), "1682m-gpio");
 if (!np)
  np = of_find_compatible_node(((void*)0), ((void*)0),
          "pasemi,pwrficient-gpio");
 if (!np)
  return -ENODEV;
 gpio_regs = of_iomap(np, 0);
 of_node_put(np);

 if (!gpio_regs)
  return -ENODEV;

 return platform_driver_register(&gpio_mdio_driver);
}
