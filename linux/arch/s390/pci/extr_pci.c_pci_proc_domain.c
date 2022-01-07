
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int dummy; } ;


 int pci_domain_nr (struct pci_bus*) ;

int pci_proc_domain(struct pci_bus *bus)
{
 return pci_domain_nr(bus);
}
