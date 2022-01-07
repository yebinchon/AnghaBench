
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ACPI_INTERRUPT_HANDLED ;
 int OSL_NOTIFY_HANDLER ;
 int acpi_device_notify_fixed ;
 int acpi_os_execute (int ,int ,void*) ;

__attribute__((used)) static u32 acpi_device_fixed_event(void *data)
{
 acpi_os_execute(OSL_NOTIFY_HANDLER, acpi_device_notify_fixed, data);
 return ACPI_INTERRUPT_HANDLED;
}
