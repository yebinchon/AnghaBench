
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int device; int transparent; } ;



__attribute__((used)) static void pci_fixup_transparent_bridge(struct pci_dev *dev)
{
 if ((dev->device & 0xff00) == 0x2400)
  dev->transparent = 1;
}
