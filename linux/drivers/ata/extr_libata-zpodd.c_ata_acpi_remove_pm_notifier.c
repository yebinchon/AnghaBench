
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_device {int dummy; } ;
typedef int acpi_handle ;


 int ACPI_SYSTEM_NOTIFY ;
 int acpi_remove_notify_handler (int ,int ,int ) ;
 int ata_dev_acpi_handle (struct ata_device*) ;
 int zpodd_wake_dev ;

__attribute__((used)) static void ata_acpi_remove_pm_notifier(struct ata_device *dev)
{
 acpi_handle handle = ata_dev_acpi_handle(dev);
 acpi_remove_notify_handler(handle, ACPI_SYSTEM_NOTIFY, zpodd_wake_dev);
}
