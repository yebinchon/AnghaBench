
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_device {int flags; int tdev; } ;
typedef int * acpi_handle ;


 int * ACPI_HANDLE (int *) ;
 int ATA_DFLAG_ACPI_DISABLED ;

acpi_handle ata_dev_acpi_handle(struct ata_device *dev)
{
 return dev->flags & ATA_DFLAG_ACPI_DISABLED ?
   ((void*)0) : ACPI_HANDLE(&dev->tdev);
}
