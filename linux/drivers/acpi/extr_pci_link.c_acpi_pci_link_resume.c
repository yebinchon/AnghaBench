
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ active; scalar_t__ initialized; } ;
struct acpi_pci_link {TYPE_1__ irq; scalar_t__ refcnt; } ;


 int acpi_pci_link_set (struct acpi_pci_link*,scalar_t__) ;

__attribute__((used)) static int acpi_pci_link_resume(struct acpi_pci_link *link)
{
 if (link->refcnt && link->irq.active && link->irq.initialized)
  return (acpi_pci_link_set(link, link->irq.active));

 return 0;
}
