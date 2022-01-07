
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_resource_extended_irq {int dummy; } ;



__attribute__((used)) static inline bool is_gsi(struct acpi_resource_extended_irq *ext_irq)
{
 return 1;
}
