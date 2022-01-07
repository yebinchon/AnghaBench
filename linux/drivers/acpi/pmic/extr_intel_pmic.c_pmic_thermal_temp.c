
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct intel_pmic_opregion {int dummy; } ;


 scalar_t__ ACPI_READ ;
 int EINVAL ;
 int pmic_read_temp (struct intel_pmic_opregion*,int,int *) ;

__attribute__((used)) static int pmic_thermal_temp(struct intel_pmic_opregion *opregion, int reg,
        u32 function, u64 *value)
{
 return function == ACPI_READ ?
  pmic_read_temp(opregion, reg, value) : -EINVAL;
}
