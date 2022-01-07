
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int non_compliant_bars; } ;



__attribute__((used)) static void pci_invalid_bar(struct pci_dev *dev)
{
 dev->non_compliant_bars = 1;
}
