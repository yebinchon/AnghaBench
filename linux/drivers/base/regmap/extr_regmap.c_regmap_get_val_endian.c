
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_config {int val_format_endian; } ;
struct regmap_bus {int val_format_endian_default; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
typedef enum regmap_endian { ____Placeholder_regmap_endian } regmap_endian ;


 int REGMAP_ENDIAN_BIG ;
 int REGMAP_ENDIAN_DEFAULT ;
 int REGMAP_ENDIAN_LITTLE ;
 int REGMAP_ENDIAN_NATIVE ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;

enum regmap_endian regmap_get_val_endian(struct device *dev,
      const struct regmap_bus *bus,
      const struct regmap_config *config)
{
 struct device_node *np;
 enum regmap_endian endian;


 endian = config->val_format_endian;


 if (endian != REGMAP_ENDIAN_DEFAULT)
  return endian;


 if (dev && dev->of_node) {
  np = dev->of_node;


  if (of_property_read_bool(np, "big-endian"))
   endian = REGMAP_ENDIAN_BIG;
  else if (of_property_read_bool(np, "little-endian"))
   endian = REGMAP_ENDIAN_LITTLE;
  else if (of_property_read_bool(np, "native-endian"))
   endian = REGMAP_ENDIAN_NATIVE;


  if (endian != REGMAP_ENDIAN_DEFAULT)
   return endian;
 }


 if (bus && bus->val_format_endian_default)
  endian = bus->val_format_endian_default;


 if (endian != REGMAP_ENDIAN_DEFAULT)
  return endian;


 return REGMAP_ENDIAN_BIG;
}
