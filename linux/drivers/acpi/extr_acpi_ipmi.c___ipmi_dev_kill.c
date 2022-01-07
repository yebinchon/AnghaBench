
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_ipmi_device {int dead; int head; } ;
struct TYPE_2__ {struct acpi_ipmi_device* selected_smi; } ;


 TYPE_1__ driver_data ;
 int list_del (int *) ;

__attribute__((used)) static void __ipmi_dev_kill(struct acpi_ipmi_device *ipmi_device)
{
 list_del(&ipmi_device->head);
 if (driver_data.selected_smi == ipmi_device)
  driver_data.selected_smi = ((void*)0);





 ipmi_device->dead = 1;
}
