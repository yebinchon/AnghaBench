
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct intel_pmic_opregion_data {int thermal_table_count; int thermal_table; } ;
struct intel_pmic_opregion {int lock; struct intel_pmic_opregion_data* data; } ;
typedef int acpi_status ;
typedef int acpi_physical_address ;


 int AE_BAD_PARAMETER ;
 int AE_ERROR ;
 int AE_OK ;
 int EINVAL ;
 int ENOENT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pmic_get_reg_bit (int ,int ,int ,int*,int*) ;
 int pmic_thermal_aux (struct intel_pmic_opregion*,int,int,int *) ;
 scalar_t__ pmic_thermal_is_aux (int ) ;
 scalar_t__ pmic_thermal_is_pen (int ) ;
 scalar_t__ pmic_thermal_is_temp (int ) ;
 int pmic_thermal_pen (struct intel_pmic_opregion*,int,int,int,int *) ;
 int pmic_thermal_temp (struct intel_pmic_opregion*,int,int,int *) ;

__attribute__((used)) static acpi_status intel_pmic_thermal_handler(u32 function,
  acpi_physical_address address, u32 bits, u64 *value64,
  void *handler_context, void *region_context)
{
 struct intel_pmic_opregion *opregion = region_context;
 struct intel_pmic_opregion_data *d = opregion->data;
 int reg, bit, result;

 if (bits != 32 || !value64)
  return AE_BAD_PARAMETER;

 result = pmic_get_reg_bit(address, d->thermal_table,
      d->thermal_table_count, &reg, &bit);
 if (result == -ENOENT)
  return AE_BAD_PARAMETER;

 mutex_lock(&opregion->lock);

 if (pmic_thermal_is_temp(address))
  result = pmic_thermal_temp(opregion, reg, function, value64);
 else if (pmic_thermal_is_aux(address))
  result = pmic_thermal_aux(opregion, reg, function, value64);
 else if (pmic_thermal_is_pen(address))
  result = pmic_thermal_pen(opregion, reg, bit,
      function, value64);
 else
  result = -EINVAL;

 mutex_unlock(&opregion->lock);

 if (result < 0) {
  if (result == -EINVAL)
   return AE_BAD_PARAMETER;
  else
   return AE_ERROR;
 }

 return AE_OK;
}
