
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int of_find_property (struct device_node*,char*,int *) ;

__attribute__((used)) static int has_button_interrupt(unsigned int irq, struct device_node *dp)
{
 if (irq == 0xffffffff)
  return 0;
 if (!of_find_property(dp, "button", ((void*)0)))
  return 0;

 return 1;
}
