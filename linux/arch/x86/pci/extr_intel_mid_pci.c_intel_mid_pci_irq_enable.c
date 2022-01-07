
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int irq_managed; int irq; int dev; int device; } ;
struct irq_alloc_info {int dummy; } ;


 int EBUSY ;

 int IOAPIC_MAP_ALLOC ;
 int IOAPIC_POL_HIGH ;
 int IOAPIC_POL_LOW ;
 int PCI_DEVICE_ID_INTEL_MRFLD_HSU ;
 int PCI_DEVICE_ID_INTEL_MRFLD_MMC ;
 int PCI_INTERRUPT_LINE ;
 int dev_to_node (int *) ;
 int dev_warn (int *,char*,int) ;
 int intel_mid_identify_cpu () ;
 int ioapic_set_alloc_attr (struct irq_alloc_info*,int ,int,int) ;
 int mp_map_gsi_to_irq (int ,int ,struct irq_alloc_info*) ;
 int pci_read_config_byte (struct pci_dev*,int ,int *) ;

__attribute__((used)) static int intel_mid_pci_irq_enable(struct pci_dev *dev)
{
 struct irq_alloc_info info;
 int polarity;
 int ret;
 u8 gsi;

 if (dev->irq_managed && dev->irq > 0)
  return 0;

 ret = pci_read_config_byte(dev, PCI_INTERRUPT_LINE, &gsi);
 if (ret < 0) {
  dev_warn(&dev->dev, "Failed to read interrupt line: %d\n", ret);
  return ret;
 }

 switch (intel_mid_identify_cpu()) {
 case 128:
  polarity = IOAPIC_POL_HIGH;


  if (gsi == 0) {




   if (dev->device == PCI_DEVICE_ID_INTEL_MRFLD_HSU)
    return -EBUSY;







   if (dev->device != PCI_DEVICE_ID_INTEL_MRFLD_MMC)
    return 0;
  }
  break;
 default:
  polarity = IOAPIC_POL_LOW;
  break;
 }

 ioapic_set_alloc_attr(&info, dev_to_node(&dev->dev), 1, polarity);





 ret = mp_map_gsi_to_irq(gsi, IOAPIC_MAP_ALLOC, &info);
 if (ret < 0)
  return ret;

 dev->irq = ret;
 dev->irq_managed = 1;

 return 0;
}
