
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct pci_dev {int dummy; } ;


 int* lboxre2_irq_tab ;
 scalar_t__ mach_is_lboxre2 () ;
 int* rts7751r2d_irq_tab ;

int pcibios_map_platform_irq(const struct pci_dev *pdev, u8 slot, u8 pin)
{
 if (mach_is_lboxre2())
  return lboxre2_irq_tab[slot];
 else
  return rts7751r2d_irq_tab[slot];
}
