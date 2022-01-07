
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __acpi_unregister_gsi (int ) ;

void acpi_unregister_gsi(u32 gsi)
{
 if (__acpi_unregister_gsi)
  __acpi_unregister_gsi(gsi);
}
