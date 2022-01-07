
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_fwspec {int dummy; } ;
struct acpi_irq_parse_one_ctx {unsigned int member_1; unsigned long* member_2; int rc; struct irq_fwspec* member_3; int member_0; } ;
typedef int acpi_handle ;


 int EINVAL ;
 int METHOD_NAME__CRS ;
 int acpi_irq_parse_one_cb ;
 int acpi_walk_resources (int ,int ,int ,struct acpi_irq_parse_one_ctx*) ;

__attribute__((used)) static int acpi_irq_parse_one(acpi_handle handle, unsigned int index,
         struct irq_fwspec *fwspec, unsigned long *flags)
{
 struct acpi_irq_parse_one_ctx ctx = { -EINVAL, index, flags, fwspec };

 acpi_walk_resources(handle, METHOD_NAME__CRS, acpi_irq_parse_one_cb, &ctx);
 return ctx.rc;
}
