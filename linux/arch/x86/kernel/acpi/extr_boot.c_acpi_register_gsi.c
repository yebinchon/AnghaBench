
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;


 int __acpi_register_gsi (struct device*,int ,int,int) ;

int acpi_register_gsi(struct device *dev, u32 gsi, int trigger, int polarity)
{
 return __acpi_register_gsi(dev, gsi, trigger, polarity);
}
