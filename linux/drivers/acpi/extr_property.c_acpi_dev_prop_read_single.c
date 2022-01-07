
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int data; } ;
typedef enum dev_prop_type { ____Placeholder_dev_prop_type } dev_prop_type ;


 int ACPI_TYPE_STRING ;
 int EINVAL ;
 int acpi_data_prop_read_single (int *,char const*,int,void*) ;

int acpi_dev_prop_read_single(struct acpi_device *adev, const char *propname,
         enum dev_prop_type proptype, void *val)
{
 int ret;

 if (!adev)
  return -EINVAL;

 ret = acpi_data_prop_read_single(&adev->data, propname, proptype, val);
 if (ret < 0 || proptype != ACPI_TYPE_STRING)
  return ret;
 return 0;
}
