
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct axp20x_dev {int regmap; } ;
typedef int acpi_status ;


 int ACPI_ADR_SPACE_GPIO ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE (struct device*) ;
 int ENODEV ;
 int acpi_install_address_space_handler (int ,int ,int ,int *,int *) ;
 int acpi_remove_address_space_handler (int ,int ,int ) ;
 struct axp20x_dev* dev_get_drvdata (struct device*) ;
 int intel_pmic_install_opregion_handler (TYPE_1__*,int ,int ,int *) ;
 int intel_xpower_pmic_gpio_handler ;
 int intel_xpower_pmic_opregion_data ;

__attribute__((used)) static int intel_xpower_pmic_opregion_probe(struct platform_device *pdev)
{
 struct device *parent = pdev->dev.parent;
 struct axp20x_dev *axp20x = dev_get_drvdata(parent);
 acpi_status status;
 int result;

 status = acpi_install_address_space_handler(ACPI_HANDLE(parent),
   ACPI_ADR_SPACE_GPIO, intel_xpower_pmic_gpio_handler,
   ((void*)0), ((void*)0));
 if (ACPI_FAILURE(status))
  return -ENODEV;

 result = intel_pmic_install_opregion_handler(&pdev->dev,
     ACPI_HANDLE(parent), axp20x->regmap,
     &intel_xpower_pmic_opregion_data);
 if (result)
  acpi_remove_address_space_handler(ACPI_HANDLE(parent),
        ACPI_ADR_SPACE_GPIO,
        intel_xpower_pmic_gpio_handler);

 return result;
}
