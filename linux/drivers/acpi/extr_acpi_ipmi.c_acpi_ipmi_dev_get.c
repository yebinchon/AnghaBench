
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_ipmi_device {int kref; } ;
struct TYPE_2__ {int ipmi_lock; struct acpi_ipmi_device* selected_smi; } ;


 TYPE_1__ driver_data ;
 int kref_get (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct acpi_ipmi_device *acpi_ipmi_dev_get(void)
{
 struct acpi_ipmi_device *ipmi_device = ((void*)0);

 mutex_lock(&driver_data.ipmi_lock);
 if (driver_data.selected_smi) {
  ipmi_device = driver_data.selected_smi;
  kref_get(&ipmi_device->kref);
 }
 mutex_unlock(&driver_data.ipmi_lock);

 return ipmi_device;
}
