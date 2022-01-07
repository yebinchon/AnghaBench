
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int data; } ;
typedef enum dev_prop_type { ____Placeholder_dev_prop_type } dev_prop_type ;


 int EINVAL ;
 int acpi_data_prop_read (int *,char const*,int,void*,size_t) ;

int acpi_dev_prop_read(const struct acpi_device *adev, const char *propname,
         enum dev_prop_type proptype, void *val, size_t nval)
{
 return adev ? acpi_data_prop_read(&adev->data, propname, proptype, val, nval) : -EINVAL;
}
