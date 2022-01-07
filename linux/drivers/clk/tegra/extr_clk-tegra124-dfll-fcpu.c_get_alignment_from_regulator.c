
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator {int dummy; } ;
struct rail_alignment {int step_uv; int offset_uv; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (struct regulator*) ;
 int PTR_ERR (struct regulator*) ;
 struct regulator* devm_regulator_get (struct device*,char*) ;
 int devm_regulator_put (struct regulator*) ;
 int regulator_get_linear_step (struct regulator*) ;
 int regulator_list_voltage (struct regulator*,int ) ;

__attribute__((used)) static int get_alignment_from_regulator(struct device *dev,
      struct rail_alignment *align)
{
 struct regulator *reg = devm_regulator_get(dev, "vdd-cpu");

 if (IS_ERR(reg))
  return PTR_ERR(reg);

 align->offset_uv = regulator_list_voltage(reg, 0);
 align->step_uv = regulator_get_linear_step(reg);

 devm_regulator_put(reg);

 return 0;
}
