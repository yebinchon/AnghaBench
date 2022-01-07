
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_hcd {scalar_t__ rsrc_len; scalar_t__ rsrc_start; int * regs; } ;
struct TYPE_4__ {int coherent_dma_mask; int * dma_mask; } ;
struct platform_device {TYPE_1__* resource; TYPE_2__ dev; } ;
struct hc_driver {int dummy; } ;
struct TYPE_3__ {scalar_t__ flags; scalar_t__ start; scalar_t__ end; } ;


 int DMA_BIT_MASK (int) ;
 int EBUSY ;
 int ENOMEM ;
 scalar_t__ IORESOURCE_IRQ ;
 int IRQF_DISABLED ;
 int hcd_name ;
 int hcd_to_ohci (struct usb_hcd*) ;
 int * ioremap (scalar_t__,scalar_t__) ;
 int iounmap (int *) ;
 int ohci_hcd_init (int ) ;
 int pr_debug (char*) ;
 int release_mem_region (scalar_t__,scalar_t__) ;
 int request_mem_region (scalar_t__,scalar_t__,int ) ;
 int usb_add_hcd (struct usb_hcd*,scalar_t__,int ) ;
 struct usb_hcd* usb_create_hcd (struct hc_driver const*,TYPE_2__*,char*) ;
 int usb_put_hcd (struct usb_hcd*) ;

__attribute__((used)) static int usb_hcd_mcs814x_probe(const struct hc_driver *driver,
    struct platform_device *pdev)
{
 int retval;
 struct usb_hcd *hcd;

 if (pdev->resource[1].flags != IORESOURCE_IRQ) {
  pr_debug("resource[1] is not IORESOURCE_IRQ");
  return -ENOMEM;
 }

 pdev->dev.coherent_dma_mask = DMA_BIT_MASK(32);
 pdev->dev.dma_mask = &pdev->dev.coherent_dma_mask;

 hcd = usb_create_hcd(driver, &pdev->dev, "mcs814x");
 if (hcd == ((void*)0))
  return -ENOMEM;

 hcd->rsrc_start = pdev->resource[0].start;
 hcd->rsrc_len = pdev->resource[0].end - pdev->resource[0].start + 1;
 if (!request_mem_region(hcd->rsrc_start, hcd->rsrc_len, hcd_name)) {
  usb_put_hcd(hcd);
  retval = -EBUSY;
  goto err1;
 }

 hcd->regs = ioremap(hcd->rsrc_start, hcd->rsrc_len);
 if (hcd->regs == ((void*)0)) {
  pr_debug("ioremap failed");
  retval = -ENOMEM;
  goto err2;
 }

 ohci_hcd_init(hcd_to_ohci(hcd));

 retval = usb_add_hcd(hcd, pdev->resource[1].start, IRQF_DISABLED);
 if (retval == 0)
  return retval;

 iounmap(hcd->regs);
err2:
 release_mem_region(hcd->rsrc_start, hcd->rsrc_len);
err1:
 usb_put_hcd(hcd);

 return retval;
}
