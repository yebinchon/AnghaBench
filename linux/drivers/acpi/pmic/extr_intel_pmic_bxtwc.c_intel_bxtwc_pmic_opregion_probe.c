
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct intel_soc_pmic {int regmap; } ;


 int ACPI_HANDLE (int ) ;
 struct intel_soc_pmic* dev_get_drvdata (int ) ;
 int intel_bxtwc_pmic_opregion_data ;
 int intel_pmic_install_opregion_handler (TYPE_1__*,int ,int ,int *) ;

__attribute__((used)) static int intel_bxtwc_pmic_opregion_probe(struct platform_device *pdev)
{
 struct intel_soc_pmic *pmic = dev_get_drvdata(pdev->dev.parent);

 return intel_pmic_install_opregion_handler(&pdev->dev,
   ACPI_HANDLE(pdev->dev.parent),
   pmic->regmap,
   &intel_bxtwc_pmic_opregion_data);
}
