
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_dev {int domain; } ;
struct pci_bus {scalar_t__ sysdata; } ;



int pci_domain_nr(struct pci_bus *bus)
{
 return ((struct zpci_dev *) bus->sysdata)->domain;
}
