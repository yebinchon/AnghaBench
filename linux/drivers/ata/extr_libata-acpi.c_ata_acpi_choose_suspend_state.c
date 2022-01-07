
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_device {scalar_t__ class; int tdev; } ;


 int ACPI_STATE_D3_COLD ;
 int ACPI_STATE_D3_HOT ;
 scalar_t__ ATA_DEV_ATAPI ;
 int acpi_pm_device_sleep_state (int *,int *,int) ;
 scalar_t__ zpodd_dev_enabled (struct ata_device*) ;
 scalar_t__ zpodd_zpready (struct ata_device*) ;

__attribute__((used)) static int ata_acpi_choose_suspend_state(struct ata_device *dev, bool runtime)
{
 int d_max_in = ACPI_STATE_D3_COLD;
 if (!runtime)
  goto out;





 if (dev->class == ATA_DEV_ATAPI &&
     !(zpodd_dev_enabled(dev) && zpodd_zpready(dev)))
  d_max_in = ACPI_STATE_D3_HOT;

out:
 return acpi_pm_device_sleep_state(&dev->tdev, ((void*)0), d_max_in);
}
