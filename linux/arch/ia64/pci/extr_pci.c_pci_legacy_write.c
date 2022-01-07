
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct pci_bus {int dummy; } ;


 int EINVAL ;
 int outb (int ,int ) ;
 int outl (int ,int ) ;
 int outw (int ,int ) ;

int pci_legacy_write(struct pci_bus *bus, u16 port, u32 val, u8 size)
{
 int ret = size;

 switch (size) {
 case 1:
  outb(val, port);
  break;
 case 2:
  outw(val, port);
  break;
 case 4:
  outl(val, port);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
