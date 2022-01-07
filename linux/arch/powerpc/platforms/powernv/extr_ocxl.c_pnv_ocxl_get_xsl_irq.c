
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct pci_dev {TYPE_1__ dev; } ;


 int dev_err (TYPE_1__*,char*) ;
 int of_property_read_u32 (int ,char*,int*) ;

int pnv_ocxl_get_xsl_irq(struct pci_dev *dev, int *hwirq)
{
 int rc;

 rc = of_property_read_u32(dev->dev.of_node, "ibm,opal-xsl-irq", hwirq);
 if (rc) {
  dev_err(&dev->dev,
   "Can't get translation interrupt for device\n");
  return rc;
 }
 return 0;
}
