
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int outb (int,int) ;
 int udelay (int) ;

__attribute__((used)) static void ce4100_reset(struct pci_dev *dev)
{
 int i;

 for (i = 0; i < 10; i++) {
  outb(0x2, 0xcf9);
  udelay(50);
 }
}
