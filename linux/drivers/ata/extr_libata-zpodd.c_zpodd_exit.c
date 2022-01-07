
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_device {int * zpodd; } ;


 int ata_acpi_remove_pm_notifier (struct ata_device*) ;
 int kfree (int *) ;

void zpodd_exit(struct ata_device *dev)
{
 ata_acpi_remove_pm_notifier(dev);
 kfree(dev->zpodd);
 dev->zpodd = ((void*)0);
}
