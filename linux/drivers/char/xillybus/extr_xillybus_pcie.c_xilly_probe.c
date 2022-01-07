
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xilly_endpoint {int dma_using_dac; int dev; int registers; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int irq; int dev; } ;


 int DMA_BIT_MASK (int) ;
 int ENODEV ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 int PCIE_LINK_STATE_L0S ;
 int dev_err (int ,char*) ;
 int devm_request_irq (int *,int ,int ,int ,int ,struct xilly_endpoint*) ;
 int pci_disable_link_state (struct pci_dev*,int ) ;
 scalar_t__ pci_enable_msi (struct pci_dev*) ;
 int pci_hw ;
 int pci_resource_flags (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct xilly_endpoint*) ;
 int pci_set_master (struct pci_dev*) ;
 int pcim_enable_device (struct pci_dev*) ;
 int pcim_iomap_regions (struct pci_dev*,int,int ) ;
 int * pcim_iomap_table (struct pci_dev*) ;
 int xillybus_endpoint_discovery (struct xilly_endpoint*) ;
 struct xilly_endpoint* xillybus_init_endpoint (struct pci_dev*,int *,int *) ;
 int xillybus_isr ;
 int xillyname ;

__attribute__((used)) static int xilly_probe(struct pci_dev *pdev,
         const struct pci_device_id *ent)
{
 struct xilly_endpoint *endpoint;
 int rc;

 endpoint = xillybus_init_endpoint(pdev, &pdev->dev, &pci_hw);

 if (!endpoint)
  return -ENOMEM;

 pci_set_drvdata(pdev, endpoint);

 rc = pcim_enable_device(pdev);
 if (rc) {
  dev_err(endpoint->dev,
   "pcim_enable_device() failed. Aborting.\n");
  return rc;
 }



 pci_disable_link_state(pdev, PCIE_LINK_STATE_L0S);

 if (!(pci_resource_flags(pdev, 0) & IORESOURCE_MEM)) {
  dev_err(endpoint->dev,
   "Incorrect BAR configuration. Aborting.\n");
  return -ENODEV;
 }

 rc = pcim_iomap_regions(pdev, 0x01, xillyname);
 if (rc) {
  dev_err(endpoint->dev,
   "pcim_iomap_regions() failed. Aborting.\n");
  return rc;
 }

 endpoint->registers = pcim_iomap_table(pdev)[0];

 pci_set_master(pdev);


 if (pci_enable_msi(pdev)) {
  dev_err(endpoint->dev,
   "Failed to enable MSI interrupts. Aborting.\n");
  return -ENODEV;
 }
 rc = devm_request_irq(&pdev->dev, pdev->irq, xillybus_isr, 0,
         xillyname, endpoint);
 if (rc) {
  dev_err(endpoint->dev,
   "Failed to register MSI handler. Aborting.\n");
  return -ENODEV;
 }
 if (!pci_set_dma_mask(pdev, DMA_BIT_MASK(32))) {
  endpoint->dma_using_dac = 0;
 } else if (!pci_set_dma_mask(pdev, DMA_BIT_MASK(64))) {
  endpoint->dma_using_dac = 1;
 } else {
  dev_err(endpoint->dev, "Failed to set DMA mask. Aborting.\n");
  return -ENODEV;
 }

 return xillybus_endpoint_discovery(endpoint);
}
