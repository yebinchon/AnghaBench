
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_dev {int dummy; } ;
struct pci_bus {scalar_t__ sysdata; } ;



__attribute__((used)) static struct zpci_dev *get_zdev_by_bus(struct pci_bus *bus)
{
 return (bus && bus->sysdata) ? (struct zpci_dev *) bus->sysdata : ((void*)0);
}
