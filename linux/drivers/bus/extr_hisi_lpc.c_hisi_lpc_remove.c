
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct logic_pio_hwaddr {int dummy; } ;
struct hisi_lpc_dev {struct logic_pio_hwaddr* io_host; } ;
struct acpi_device {int dummy; } ;


 struct acpi_device* ACPI_COMPANION (struct device*) ;
 struct hisi_lpc_dev* dev_get_drvdata (struct device*) ;
 int hisi_lpc_acpi_remove (struct device*) ;
 int logic_pio_unregister_range (struct logic_pio_hwaddr*) ;
 int of_platform_depopulate (struct device*) ;

__attribute__((used)) static int hisi_lpc_remove(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct acpi_device *acpi_device = ACPI_COMPANION(dev);
 struct hisi_lpc_dev *lpcdev = dev_get_drvdata(dev);
 struct logic_pio_hwaddr *range = lpcdev->io_host;

 if (acpi_device)
  hisi_lpc_acpi_remove(dev);
 else
  of_platform_depopulate(dev);

 logic_pio_unregister_range(range);

 return 0;
}
