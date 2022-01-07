
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct pci_bus {int dummy; } ;


 int EINVAL ;
 int inb (int ) ;
 int inl (int ) ;
 int inw (int ) ;

int pci_legacy_read(struct pci_bus *bus, u16 port, u32 *val, u8 size)
{
 int ret = size;

 switch (size) {
 case 1:
  *val = inb(port);
  break;
 case 2:
  *val = inw(port);
  break;
 case 4:
  *val = inl(port);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
