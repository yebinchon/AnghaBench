
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_controller {int * ops; } ;
struct pci_bus {int number; int * ops; struct pci_controller* sysdata; } ;


 int null_pci_ops ;
 int pr_err (char*,int) ;

__attribute__((used)) static struct pci_bus *
fake_pci_bus(struct pci_controller *hose, int busnr)
{
 static struct pci_bus bus;

 if (!hose)
  pr_err("Can't find hose for PCI bus %d!\n", busnr);

 bus.number = busnr;
 bus.sysdata = hose;
 bus.ops = hose ? hose->ops : &null_pci_ops;
 return &bus;
}
