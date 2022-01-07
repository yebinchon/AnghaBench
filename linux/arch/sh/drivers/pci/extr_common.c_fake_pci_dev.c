
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int devfn; struct pci_channel* sysdata; struct pci_bus* bus; } ;
struct pci_channel {int pci_ops; } ;
struct pci_bus {int number; struct pci_bus* parent; int ops; struct pci_channel* sysdata; } ;



__attribute__((used)) static struct pci_dev *fake_pci_dev(struct pci_channel *hose,
 int top_bus, int busnr, int devfn)
{
 static struct pci_dev dev;
 static struct pci_bus bus;

 dev.bus = &bus;
 dev.sysdata = hose;
 dev.devfn = devfn;
 bus.number = busnr;
 bus.sysdata = hose;
 bus.ops = hose->pci_ops;

 if(busnr != top_bus)

  bus.parent = &bus;
 else
  bus.parent = ((void*)0);

 return &dev;
}
