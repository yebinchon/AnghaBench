
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_sysdata {int companion; } ;
struct TYPE_4__ {int parent; } ;
struct pci_host_bridge {TYPE_2__ dev; TYPE_1__* bus; } ;
struct TYPE_3__ {struct pci_sysdata* sysdata; } ;


 int ACPI_COMPANION_SET (TYPE_2__*,int ) ;

int pcibios_root_bridge_prepare(struct pci_host_bridge *bridge)
{






 if (!bridge->dev.parent) {
  struct pci_sysdata *sd = bridge->bus->sysdata;
  ACPI_COMPANION_SET(&bridge->dev, sd->companion);
 }
 return 0;
}
