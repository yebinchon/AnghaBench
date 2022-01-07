
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct intel_soc_pmic {int regmap; } ;


 int ACPI_HANDLE (int ) ;
 int acpi_walk_dep_device_list (int ) ;
 int chtdc_ti_pmic_opregion_data ;
 struct intel_soc_pmic* dev_get_drvdata (int ) ;
 int intel_pmic_install_opregion_handler (TYPE_1__*,int ,int ,int *) ;

__attribute__((used)) static int chtdc_ti_pmic_opregion_probe(struct platform_device *pdev)
{
 struct intel_soc_pmic *pmic = dev_get_drvdata(pdev->dev.parent);
 int err;

 err = intel_pmic_install_opregion_handler(&pdev->dev,
   ACPI_HANDLE(pdev->dev.parent), pmic->regmap,
   &chtdc_ti_pmic_opregion_data);
 if (err < 0)
  return err;


 acpi_walk_dep_device_list(ACPI_HANDLE(pdev->dev.parent));
 return 0;
}
