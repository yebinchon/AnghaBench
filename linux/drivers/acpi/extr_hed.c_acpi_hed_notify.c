
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_device {int dummy; } ;


 int acpi_hed_notify_list ;
 int blocking_notifier_call_chain (int *,int ,int *) ;

__attribute__((used)) static void acpi_hed_notify(struct acpi_device *device, u32 event)
{
 blocking_notifier_call_chain(&acpi_hed_notify_list, 0, ((void*)0));
}
