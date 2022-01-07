
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct intel_pmic_opregion_data {int dummy; } ;
struct intel_pmic_opregion {int lpat_table; struct intel_pmic_opregion_data* data; struct regmap* regmap; int lock; } ;
struct device {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PMIC_POWER_OPREGION_ID ;
 int PMIC_REGS_OPREGION_ID ;
 int PMIC_THERMAL_OPREGION_ID ;
 int acpi_install_address_space_handler (int ,int ,int ,int *,struct intel_pmic_opregion*) ;
 int acpi_lpat_free_conversion_table (int ) ;
 int acpi_lpat_get_conversion_table (int ) ;
 int acpi_remove_address_space_handler (int ,int ,int ) ;
 struct intel_pmic_opregion* devm_kzalloc (struct device*,int,int ) ;
 struct intel_pmic_opregion* intel_pmic_opregion ;
 int intel_pmic_power_handler ;
 int intel_pmic_regs_handler ;
 int intel_pmic_thermal_handler ;
 int mutex_init (int *) ;

int intel_pmic_install_opregion_handler(struct device *dev, acpi_handle handle,
     struct regmap *regmap,
     struct intel_pmic_opregion_data *d)
{
 acpi_status status;
 struct intel_pmic_opregion *opregion;
 int ret;

 if (!dev || !regmap || !d)
  return -EINVAL;

 if (!handle)
  return -ENODEV;

 opregion = devm_kzalloc(dev, sizeof(*opregion), GFP_KERNEL);
 if (!opregion)
  return -ENOMEM;

 mutex_init(&opregion->lock);
 opregion->regmap = regmap;
 opregion->lpat_table = acpi_lpat_get_conversion_table(handle);

 status = acpi_install_address_space_handler(handle,
          PMIC_POWER_OPREGION_ID,
          intel_pmic_power_handler,
          ((void*)0), opregion);
 if (ACPI_FAILURE(status)) {
  ret = -ENODEV;
  goto out_error;
 }

 status = acpi_install_address_space_handler(handle,
          PMIC_THERMAL_OPREGION_ID,
          intel_pmic_thermal_handler,
          ((void*)0), opregion);
 if (ACPI_FAILURE(status)) {
  ret = -ENODEV;
  goto out_remove_power_handler;
 }

 status = acpi_install_address_space_handler(handle,
   PMIC_REGS_OPREGION_ID, intel_pmic_regs_handler, ((void*)0),
   opregion);
 if (ACPI_FAILURE(status)) {
  ret = -ENODEV;
  goto out_remove_thermal_handler;
 }

 opregion->data = d;
 intel_pmic_opregion = opregion;
 return 0;

out_remove_thermal_handler:
 acpi_remove_address_space_handler(handle, PMIC_THERMAL_OPREGION_ID,
       intel_pmic_thermal_handler);

out_remove_power_handler:
 acpi_remove_address_space_handler(handle, PMIC_POWER_OPREGION_ID,
       intel_pmic_power_handler);

out_error:
 acpi_lpat_free_conversion_table(opregion->lpat_table);
 return ret;
}
