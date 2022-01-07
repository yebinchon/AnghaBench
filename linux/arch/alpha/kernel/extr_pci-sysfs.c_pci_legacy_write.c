
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_controller {TYPE_1__* io_space; } ;
struct pci_bus {struct pci_controller* sysdata; } ;
typedef int loff_t ;
struct TYPE_2__ {scalar_t__ start; } ;


 int EINVAL ;
 int outb (int,int ) ;
 int outl (int,int ) ;
 int outw (int,int ) ;

int pci_legacy_write(struct pci_bus *bus, loff_t port, u32 val, size_t size)
{
 struct pci_controller *hose = bus->sysdata;

 port += hose->io_space->start;

 switch(size) {
 case 1:
  outb(port, val);
  return 1;
 case 2:
  if (port & 1)
   return -EINVAL;
  outw(port, val);
  return 2;
 case 4:
  if (port & 3)
   return -EINVAL;
  outl(port, val);
  return 4;
 }
 return -EINVAL;
}
