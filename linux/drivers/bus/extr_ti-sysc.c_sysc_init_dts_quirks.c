
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_3__ {scalar_t__ srst_udelay; } ;
struct sysc {TYPE_1__ cfg; TYPE_2__* dev; int legacy_mode; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {struct device_node* of_node; } ;


 int dev_warn (TYPE_2__*,char*,int) ;
 int of_get_property (struct device_node*,char*,int *) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int sysc_parse_dts_quirks (struct sysc*,struct device_node*,int) ;

__attribute__((used)) static int sysc_init_dts_quirks(struct sysc *ddata)
{
 struct device_node *np = ddata->dev->of_node;
 int error;
 u32 val;

 ddata->legacy_mode = of_get_property(np, "ti,hwmods", ((void*)0));

 sysc_parse_dts_quirks(ddata, np, 0);
 error = of_property_read_u32(np, "ti,sysc-delay-us", &val);
 if (!error) {
  if (val > 255) {
   dev_warn(ddata->dev, "bad ti,sysc-delay-us: %i\n",
     val);
  }

  ddata->cfg.srst_udelay = (u8)val;
 }

 return 0;
}
