
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct resource {int flags; void* end; void* start; } ;


 int IORESOURCE_DISABLED ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_UNSET ;

__attribute__((used)) static void acpi_dev_irqresource_disabled(struct resource *res, u32 gsi)
{
 res->start = gsi;
 res->end = gsi;
 res->flags = IORESOURCE_IRQ | IORESOURCE_DISABLED | IORESOURCE_UNSET;
}
