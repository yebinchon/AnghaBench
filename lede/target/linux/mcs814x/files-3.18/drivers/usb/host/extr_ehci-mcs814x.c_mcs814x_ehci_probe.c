
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct usb_hcd {int rsrc_start; int rsrc_len; int * regs; } ;
struct resource {int start; } ;
struct TYPE_6__ {int coherent_dma_mask; int * dma_mask; } ;
struct platform_device {TYPE_1__ dev; } ;
struct hc_driver {int description; } ;


 int DMA_BIT_MASK (int) ;
 int EBUSY ;
 int EFAULT ;
 int ENODEV ;
 int ENOMEM ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 int dev_dbg (TYPE_1__*,char*) ;
 int dev_err (TYPE_1__*,char*,int ,...) ;
 int dev_info (TYPE_1__*,char*) ;
 int dev_name (TYPE_1__*) ;
 int * ioremap_nocache (int,int ) ;
 int iounmap (int *) ;
 struct hc_driver mcs814x_ehci_hc_driver ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_mem_region (int,int ) ;
 int request_mem_region (int,int ,int ) ;
 int resource_size (struct resource*) ;
 int usb_add_hcd (struct usb_hcd*,int,int ) ;
 struct usb_hcd* usb_create_hcd (struct hc_driver const*,TYPE_1__*,int ) ;
 scalar_t__ usb_disabled () ;
 int usb_put_hcd (struct usb_hcd*) ;

__attribute__((used)) static int mcs814x_ehci_probe(struct platform_device *pdev)
{
 struct usb_hcd *hcd;
 const struct hc_driver *driver = &mcs814x_ehci_hc_driver;
 struct resource *res;
 int irq;
 int retval;

 if (usb_disabled())
  return -ENODEV;

 res = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (!res) {
  dev_err(&pdev->dev,
   "Found HC with no IRQ. Check %s setup!\n",
   dev_name(&pdev->dev));
  return -ENODEV;
 }
 irq = res->start;

 pdev->dev.coherent_dma_mask = DMA_BIT_MASK(32);
 pdev->dev.dma_mask = &pdev->dev.coherent_dma_mask;

 hcd = usb_create_hcd(driver, &pdev->dev, dev_name(&pdev->dev));
 if (!hcd) {
  retval = -ENOMEM;
  goto fail_create_hcd;
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(&pdev->dev,
   "Found HC with no register addr. Check %s setup!\n",
   dev_name(&pdev->dev));
  retval = -ENODEV;
  goto fail_request_resource;
 }
 hcd->rsrc_start = res->start;
 hcd->rsrc_len = resource_size(res);

 if (!request_mem_region(hcd->rsrc_start, hcd->rsrc_len,
    driver->description)) {
  dev_dbg(&pdev->dev, "controller already in use\n");
  retval = -EBUSY;
  goto fail_request_resource;
 }

 hcd->regs = ioremap_nocache(hcd->rsrc_start, hcd->rsrc_len);
 if (hcd->regs == ((void*)0)) {
  dev_dbg(&pdev->dev, "error mapping memory\n");
  retval = -EFAULT;
  goto fail_ioremap;
 }

 retval = usb_add_hcd(hcd, irq, IRQF_SHARED);
 if (retval)
  goto fail_add_hcd;

 dev_info(&pdev->dev, "added MCS814X EHCI driver\n");

 return retval;

fail_add_hcd:
 iounmap(hcd->regs);
fail_ioremap:
 release_mem_region(hcd->rsrc_start, hcd->rsrc_len);
fail_request_resource:
 usb_put_hcd(hcd);
fail_create_hcd:
 dev_err(&pdev->dev, "init %s fail, %d\n", dev_name(&pdev->dev), retval);
 return retval;
}
