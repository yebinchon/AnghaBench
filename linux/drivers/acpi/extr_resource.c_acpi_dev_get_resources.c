
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct acpi_device {int dummy; } ;


 int METHOD_NAME__CRS ;
 int __acpi_dev_get_resources (struct acpi_device*,struct list_head*,int (*) (struct acpi_resource*,void*),void*,int ) ;

int acpi_dev_get_resources(struct acpi_device *adev, struct list_head *list,
      int (*preproc)(struct acpi_resource *, void *),
      void *preproc_data)
{
 return __acpi_dev_get_resources(adev, list, preproc, preproc_data,
     METHOD_NAME__CRS);
}
