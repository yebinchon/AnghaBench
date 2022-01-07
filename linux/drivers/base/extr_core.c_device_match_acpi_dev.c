
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 void const* ACPI_COMPANION (struct device*) ;

int device_match_acpi_dev(struct device *dev, const void *adev)
{
 return ACPI_COMPANION(dev) == adev;
}
