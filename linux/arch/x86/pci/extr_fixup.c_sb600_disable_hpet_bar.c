
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int inb (int) ;
 int outb (int,int) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;

__attribute__((used)) static void sb600_disable_hpet_bar(struct pci_dev *dev)
{
 u8 val;
 pci_read_config_byte(dev, 0x08, &val);

 if (val < 0x2F) {
  outb(0x55, 0xCD6);
  val = inb(0xCD7);


  outb(0x55, 0xCD6);
  outb(val | 0x80, 0xCD7);
 }
}
