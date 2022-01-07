
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_generic_address {int dummy; } ;


 int acpi_os_unmap_generic_address (struct acpi_generic_address*) ;

__attribute__((used)) static inline void apei_unmap_generic_address(struct acpi_generic_address *reg)
{
 acpi_os_unmap_generic_address(reg);
}
