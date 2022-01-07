
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps68470_pmic_opregion {int lock; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct device {int parent; } ;
struct platform_device {struct device dev; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE (int ) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int TI_PMIC_CLKFREQ_OPREGION_ID ;
 int TI_PMIC_CLOCK_OPREGION_ID ;
 int TI_PMIC_POWER_OPREGION_ID ;
 int TI_PMIC_VR_VAL_OPREGION_ID ;
 int acpi_install_address_space_handler (int ,int ,int ,int *,struct tps68470_pmic_opregion*) ;
 int acpi_remove_address_space_handler (int ,int ,int ) ;
 struct regmap* dev_get_drvdata (int ) ;
 int dev_warn (struct device*,char*) ;
 struct tps68470_pmic_opregion* devm_kzalloc (struct device*,int,int ) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int tps68470_pmic_cfreq_handler ;
 int tps68470_pmic_clk_handler ;
 int tps68470_pmic_pwr_handler ;
 int tps68470_pmic_vrval_handler ;

__attribute__((used)) static int tps68470_pmic_opregion_probe(struct platform_device *pdev)
{
 struct regmap *tps68470_regmap = dev_get_drvdata(pdev->dev.parent);
 acpi_handle handle = ACPI_HANDLE(pdev->dev.parent);
 struct device *dev = &pdev->dev;
 struct tps68470_pmic_opregion *opregion;
 acpi_status status;

 if (!dev || !tps68470_regmap) {
  dev_warn(dev, "dev or regmap is NULL\n");
  return -EINVAL;
 }

 if (!handle) {
  dev_warn(dev, "acpi handle is NULL\n");
  return -ENODEV;
 }

 opregion = devm_kzalloc(dev, sizeof(*opregion), GFP_KERNEL);
 if (!opregion)
  return -ENOMEM;

 mutex_init(&opregion->lock);
 opregion->regmap = tps68470_regmap;

 status = acpi_install_address_space_handler(handle,
          TI_PMIC_POWER_OPREGION_ID,
          tps68470_pmic_pwr_handler,
          ((void*)0), opregion);
 if (ACPI_FAILURE(status))
  goto out_mutex_destroy;

 status = acpi_install_address_space_handler(handle,
          TI_PMIC_VR_VAL_OPREGION_ID,
          tps68470_pmic_vrval_handler,
          ((void*)0), opregion);
 if (ACPI_FAILURE(status))
  goto out_remove_power_handler;

 status = acpi_install_address_space_handler(handle,
          TI_PMIC_CLOCK_OPREGION_ID,
          tps68470_pmic_clk_handler,
          ((void*)0), opregion);
 if (ACPI_FAILURE(status))
  goto out_remove_vr_val_handler;

 status = acpi_install_address_space_handler(handle,
          TI_PMIC_CLKFREQ_OPREGION_ID,
          tps68470_pmic_cfreq_handler,
          ((void*)0), opregion);
 if (ACPI_FAILURE(status))
  goto out_remove_clk_handler;

 return 0;

out_remove_clk_handler:
 acpi_remove_address_space_handler(handle, TI_PMIC_CLOCK_OPREGION_ID,
       tps68470_pmic_clk_handler);
out_remove_vr_val_handler:
 acpi_remove_address_space_handler(handle, TI_PMIC_VR_VAL_OPREGION_ID,
       tps68470_pmic_vrval_handler);
out_remove_power_handler:
 acpi_remove_address_space_handler(handle, TI_PMIC_POWER_OPREGION_ID,
       tps68470_pmic_pwr_handler);
out_mutex_destroy:
 mutex_destroy(&opregion->lock);
 return -ENODEV;
}
