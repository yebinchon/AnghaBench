
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;


 int ACPI_LEVEL_SENSITIVE ;
 int elcr_set_level_irq (int) ;

__attribute__((used)) static int acpi_register_gsi_pic(struct device *dev, u32 gsi,
     int trigger, int polarity)
{
 return gsi;
}
