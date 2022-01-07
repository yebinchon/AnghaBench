
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_channel {int dummy; } ;



int __attribute__((weak)) pci_fixup_pcic(struct pci_channel *chan)
{

 return 0;
}
