
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpodd {int mech_type; struct ata_device* dev; } ;
struct ata_device {int tdev; struct zpodd* zpodd; } ;
struct acpi_device {int dummy; } ;
typedef enum odd_mech_type { ____Placeholder_odd_mech_type } odd_mech_type ;


 struct acpi_device* ACPI_COMPANION (int *) ;
 int GFP_KERNEL ;
 int ODD_MECH_TYPE_UNSUPPORTED ;
 int acpi_device_can_poweroff (struct acpi_device*) ;
 int ata_acpi_add_pm_notifier (struct ata_device*) ;
 int dev_pm_qos_expose_flags (int *,int ) ;
 struct zpodd* kzalloc (int,int ) ;
 int zpodd_get_mech_type (struct ata_device*) ;

void zpodd_init(struct ata_device *dev)
{
 struct acpi_device *adev = ACPI_COMPANION(&dev->tdev);
 enum odd_mech_type mech_type;
 struct zpodd *zpodd;

 if (dev->zpodd || !adev || !acpi_device_can_poweroff(adev))
  return;

 mech_type = zpodd_get_mech_type(dev);
 if (mech_type == ODD_MECH_TYPE_UNSUPPORTED)
  return;

 zpodd = kzalloc(sizeof(struct zpodd), GFP_KERNEL);
 if (!zpodd)
  return;

 zpodd->mech_type = mech_type;

 ata_acpi_add_pm_notifier(dev);
 zpodd->dev = dev;
 dev->zpodd = zpodd;
 dev_pm_qos_expose_flags(&dev->tdev, 0);
}
