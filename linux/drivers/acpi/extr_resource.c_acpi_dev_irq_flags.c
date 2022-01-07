
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ ACPI_ACTIVE_LOW ;
 scalar_t__ ACPI_LEVEL_SENSITIVE ;
 scalar_t__ ACPI_SHARED ;
 unsigned long IORESOURCE_IRQ ;
 unsigned long IORESOURCE_IRQ_HIGHEDGE ;
 unsigned long IORESOURCE_IRQ_HIGHLEVEL ;
 unsigned long IORESOURCE_IRQ_LOWEDGE ;
 unsigned long IORESOURCE_IRQ_LOWLEVEL ;
 unsigned long IORESOURCE_IRQ_SHAREABLE ;

unsigned long acpi_dev_irq_flags(u8 triggering, u8 polarity, u8 shareable)
{
 unsigned long flags;

 if (triggering == ACPI_LEVEL_SENSITIVE)
  flags = polarity == ACPI_ACTIVE_LOW ?
   IORESOURCE_IRQ_LOWLEVEL : IORESOURCE_IRQ_HIGHLEVEL;
 else
  flags = polarity == ACPI_ACTIVE_LOW ?
   IORESOURCE_IRQ_LOWEDGE : IORESOURCE_IRQ_HIGHEDGE;

 if (shareable == ACPI_SHARED)
  flags |= IORESOURCE_IRQ_SHAREABLE;

 return flags | IORESOURCE_IRQ;
}
