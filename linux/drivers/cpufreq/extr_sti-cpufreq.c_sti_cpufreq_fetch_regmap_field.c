
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap_field {int dummy; } ;
struct reg_field {int reg; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int syscfg_eng; struct device* cpu; } ;


 scalar_t__ IS_ERR (struct regmap_field*) ;
 int PTR_ERR (struct regmap_field*) ;
 TYPE_1__ ddata ;
 int dev_err (struct device*,char*,...) ;
 struct regmap_field* devm_regmap_field_alloc (struct device*,int ,struct reg_field) ;
 int regmap_field_read (struct regmap_field*,unsigned int*) ;

__attribute__((used)) static int sti_cpufreq_fetch_regmap_field(const struct reg_field *reg_fields,
       int hw_info_offset, int field)
{
 struct regmap_field *regmap_field;
 struct reg_field reg_field = reg_fields[field];
 struct device *dev = ddata.cpu;
 unsigned int value;
 int ret;

 reg_field.reg = hw_info_offset;
 regmap_field = devm_regmap_field_alloc(dev,
            ddata.syscfg_eng,
            reg_field);
 if (IS_ERR(regmap_field)) {
  dev_err(dev, "Failed to allocate reg field\n");
  return PTR_ERR(regmap_field);
 }

 ret = regmap_field_read(regmap_field, &value);
 if (ret) {
  dev_err(dev, "Failed to read %s code\n",
   field ? "SUBSTRATE" : "PCODE");
  return ret;
 }

 return value;
}
