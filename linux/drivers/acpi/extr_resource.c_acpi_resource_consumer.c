
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct acpi_device {int dummy; } ;


 int acpi_get_devices (int *,int ,struct resource*,void**) ;
 int acpi_res_consumer_cb ;

struct acpi_device *acpi_resource_consumer(struct resource *res)
{
 struct acpi_device *consumer = ((void*)0);

 acpi_get_devices(((void*)0), acpi_res_consumer_cb, res, (void **) &consumer);
 return consumer;
}
