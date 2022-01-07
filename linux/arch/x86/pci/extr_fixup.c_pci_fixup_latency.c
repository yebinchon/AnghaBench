
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int dev_dbg (int *,char*) ;
 int pcibios_max_latency ;

__attribute__((used)) static void pci_fixup_latency(struct pci_dev *d)
{




 dev_dbg(&d->dev, "Setting max latency to 32\n");
 pcibios_max_latency = 32;
}
