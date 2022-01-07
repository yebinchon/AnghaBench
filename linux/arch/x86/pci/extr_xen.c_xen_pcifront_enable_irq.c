
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int irq; int dev; } ;


 int PCI_INTERRUPT_LINE ;
 int dev_info (int *,char*,int,int) ;
 int dev_warn (int *,char*,int,...) ;
 int nr_legacy_irqs () ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int xen_bind_pirq_gsi_to_irq (int,int,int,char*) ;

__attribute__((used)) static int xen_pcifront_enable_irq(struct pci_dev *dev)
{
 int rc;
 int share = 1;
 int pirq;
 u8 gsi;

 rc = pci_read_config_byte(dev, PCI_INTERRUPT_LINE, &gsi);
 if (rc < 0) {
  dev_warn(&dev->dev, "Xen PCI: failed to read interrupt line: %d\n",
    rc);
  return rc;
 }

 pirq = gsi;

 if (gsi < nr_legacy_irqs())
  share = 0;

 rc = xen_bind_pirq_gsi_to_irq(gsi, pirq, share, "pcifront");
 if (rc < 0) {
  dev_warn(&dev->dev, "Xen PCI: failed to bind GSI%d (PIRQ%d) to IRQ: %d\n",
    gsi, pirq, rc);
  return rc;
 }

 dev->irq = rc;
 dev_info(&dev->dev, "Xen PCI mapped GSI%d to IRQ%d\n", gsi, dev->irq);
 return 0;
}
