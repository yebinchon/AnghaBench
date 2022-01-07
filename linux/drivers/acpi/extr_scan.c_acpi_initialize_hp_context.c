
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_hotplug_context {int (* notify ) (struct acpi_device*,u32) ;void (* uevent ) (struct acpi_device*,u32) ;} ;
struct acpi_device {int dummy; } ;


 int acpi_lock_hp_context () ;
 int acpi_set_hp_context (struct acpi_device*,struct acpi_hotplug_context*) ;
 int acpi_unlock_hp_context () ;

void acpi_initialize_hp_context(struct acpi_device *adev,
    struct acpi_hotplug_context *hp,
    int (*notify)(struct acpi_device *, u32),
    void (*uevent)(struct acpi_device *, u32))
{
 acpi_lock_hp_context();
 hp->notify = notify;
 hp->uevent = uevent;
 acpi_set_hp_context(adev, hp);
 acpi_unlock_hp_context();
}
