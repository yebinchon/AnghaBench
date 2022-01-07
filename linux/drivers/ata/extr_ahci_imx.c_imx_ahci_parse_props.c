
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct reg_property {int num_values; scalar_t__ set_value; scalar_t__ def_value; int name; TYPE_1__* values; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct TYPE_2__ {scalar_t__ of_value; scalar_t__ reg_value; } ;


 int dev_err (struct device*,char*,int ) ;
 int dev_info (struct device*,char*,int ,scalar_t__,...) ;
 scalar_t__ of_property_read_bool (struct device_node*,int ) ;
 scalar_t__ of_property_read_u32 (struct device_node*,int ,scalar_t__*) ;

__attribute__((used)) static u32 imx_ahci_parse_props(struct device *dev,
    const struct reg_property *prop, size_t num)
{
 struct device_node *np = dev->of_node;
 u32 reg_value = 0;
 int i, j;

 for (i = 0; i < num; i++, prop++) {
  u32 of_val;

  if (prop->num_values == 0) {
   if (of_property_read_bool(np, prop->name))
    reg_value |= prop->set_value;
   else
    reg_value |= prop->def_value;
   continue;
  }

  if (of_property_read_u32(np, prop->name, &of_val)) {
   dev_info(dev, "%s not specified, using %08x\n",
    prop->name, prop->def_value);
   reg_value |= prop->def_value;
   continue;
  }

  for (j = 0; j < prop->num_values; j++) {
   if (prop->values[j].of_value == of_val) {
    dev_info(dev, "%s value %u, using %08x\n",
     prop->name, of_val, prop->values[j].reg_value);
    reg_value |= prop->values[j].reg_value;
    break;
   }
  }

  if (j == prop->num_values) {
   dev_err(dev, "DT property %s is not a valid value\n",
    prop->name);
   reg_value |= prop->def_value;
  }
 }

 return reg_value;
}
