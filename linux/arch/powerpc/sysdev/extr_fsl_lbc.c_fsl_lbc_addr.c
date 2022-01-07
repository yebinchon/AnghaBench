
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct device_node {int dummy; } ;
typedef int phys_addr_t ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {struct device_node* of_node; } ;


 TYPE_2__* fsl_lbc_ctrl_dev ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;

u32 fsl_lbc_addr(phys_addr_t addr_base)
{
 struct device_node *np = fsl_lbc_ctrl_dev->dev->of_node;
 u32 addr = addr_base & 0xffff8000;

 if (of_device_is_compatible(np, "fsl,elbc"))
  return addr;

 return addr | ((addr_base & 0x300000000ull) >> 19);
}
