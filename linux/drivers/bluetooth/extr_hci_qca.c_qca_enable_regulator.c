
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator {int dummy; } ;
struct qca_vreg {scalar_t__ load_uA; int max_uV; int min_uV; } ;


 int regulator_enable (struct regulator*) ;
 int regulator_set_load (struct regulator*,scalar_t__) ;
 int regulator_set_voltage (struct regulator*,int ,int ) ;

__attribute__((used)) static int qca_enable_regulator(struct qca_vreg vregs,
    struct regulator *regulator)
{
 int ret;

 ret = regulator_set_voltage(regulator, vregs.min_uV,
        vregs.max_uV);
 if (ret)
  return ret;

 if (vregs.load_uA)
  ret = regulator_set_load(regulator,
      vregs.load_uA);

 if (ret)
  return ret;

 return regulator_enable(regulator);

}
