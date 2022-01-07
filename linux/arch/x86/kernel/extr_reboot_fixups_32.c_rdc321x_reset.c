
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 unsigned int inl (int) ;
 int outb (int,int) ;
 int outl (unsigned int,int) ;

__attribute__((used)) static void rdc321x_reset(struct pci_dev *dev)
{
 unsigned i;

 outl(0x80003840, 0xCF8);

 i = inl(0xCFC);

 i |= 0x1600;
 outl(i, 0xCFC);
 outb(1, 0x92);
}
