
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int sysc_val; } ;
struct sysc {TYPE_3__* cap; TYPE_2__ cfg; TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {int sysc_mask; } ;
struct TYPE_4__ {struct device_node* of_node; } ;


 int of_property_read_u32 (struct device_node*,char*,int*) ;

__attribute__((used)) static int sysc_init_sysc_mask(struct sysc *ddata)
{
 struct device_node *np = ddata->dev->of_node;
 int error;
 u32 val;

 error = of_property_read_u32(np, "ti,sysc-mask", &val);
 if (error)
  return 0;

 ddata->cfg.sysc_val = val & ddata->cap->sysc_mask;

 return 0;
}
