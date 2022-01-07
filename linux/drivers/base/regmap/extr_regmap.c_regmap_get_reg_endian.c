
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_config {int reg_format_endian; } ;
struct regmap_bus {int reg_format_endian_default; } ;
typedef enum regmap_endian { ____Placeholder_regmap_endian } regmap_endian ;


 int REGMAP_ENDIAN_BIG ;
 int REGMAP_ENDIAN_DEFAULT ;

__attribute__((used)) static enum regmap_endian regmap_get_reg_endian(const struct regmap_bus *bus,
     const struct regmap_config *config)
{
 enum regmap_endian endian;


 endian = config->reg_format_endian;


 if (endian != REGMAP_ENDIAN_DEFAULT)
  return endian;


 if (bus && bus->reg_format_endian_default)
  endian = bus->reg_format_endian_default;


 if (endian != REGMAP_ENDIAN_DEFAULT)
  return endian;


 return REGMAP_ENDIAN_BIG;
}
