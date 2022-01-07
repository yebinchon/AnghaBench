
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ipmi_device {int kref; } ;


 int ipmi_dev_release_kref ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void acpi_ipmi_dev_put(struct acpi_ipmi_device *ipmi_device)
{
 kref_put(&ipmi_device->kref, ipmi_dev_release_kref);
}
