
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_controller {int dummy; } ;


 int fake_pci_bus (struct pci_controller*,int) ;
 int pci_bus_find_capability (int ,int,int) ;

int early_find_capability(struct pci_controller *hose, int bus, int devfn,
     int cap)
{
 return pci_bus_find_capability(fake_pci_bus(hose, bus), devfn, cap);
}
