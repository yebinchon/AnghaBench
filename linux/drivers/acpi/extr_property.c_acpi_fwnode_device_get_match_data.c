
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;


 void const* acpi_device_get_match_data (struct device const*) ;

__attribute__((used)) static const void *
acpi_fwnode_device_get_match_data(const struct fwnode_handle *fwnode,
      const struct device *dev)
{
 return acpi_device_get_match_data(dev);
}
