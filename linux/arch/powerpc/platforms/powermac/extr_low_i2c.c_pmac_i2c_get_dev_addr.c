
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
typedef int u32 ;
struct device_node {int dummy; } ;


 int* of_get_property (struct device_node*,char*,int *) ;

u8 pmac_i2c_get_dev_addr(struct device_node *device)
{
 const u32 *reg = of_get_property(device, "reg", ((void*)0));

 if (reg == ((void*)0))
  return 0;

 return (*reg) & 0xff;
}
