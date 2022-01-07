
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator {int dummy; } ;
struct qca_vreg {scalar_t__ load_uA; int max_uV; } ;


 int regulator_disable (struct regulator*) ;
 int regulator_set_load (struct regulator*,int ) ;
 int regulator_set_voltage (struct regulator*,int ,int ) ;

__attribute__((used)) static void qca_disable_regulator(struct qca_vreg vregs,
      struct regulator *regulator)
{
 regulator_disable(regulator);
 regulator_set_voltage(regulator, 0, vregs.max_uV);
 if (vregs.load_uA)
  regulator_set_load(regulator, 0);

}
