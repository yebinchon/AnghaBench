
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ u32 ;
struct skd_device {int pcie_error_reporting_is_enabled; scalar_t__ gendisk_on; scalar_t__* mem_map; int waitq; scalar_t__* mem_size; scalar_t__* mem_phys; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; int device; int vendor; } ;


 int BUG_ON (int) ;
 int DMA_BIT_MASK (int) ;
 int DRV_NAME ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int HZ ;
 int SKD_MAX_BARS ;
 int SKD_START_WAIT_SECONDS ;
 int dev_dbg (int *,char*,scalar_t__,int ,...) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,char*) ;
 int dma_set_mask_and_coherent (int *,int ) ;
 int init_waitqueue_head (int *) ;
 scalar_t__ ioremap (scalar_t__,scalar_t__) ;
 int iounmap (scalar_t__) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_pcie_error_reporting (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_enable_pcie_error_reporting (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 scalar_t__ pci_resource_len (struct pci_dev*,int) ;
 scalar_t__ pci_resource_start (struct pci_dev*,int) ;
 int pci_set_drvdata (struct pci_dev*,struct skd_device*) ;
 int pci_set_master (struct pci_dev*) ;
 int register_blkdev (int ,int ) ;
 int skd_acquire_irq (struct skd_device*) ;
 int skd_bdev_attach (int *,struct skd_device*) ;
 struct skd_device* skd_construct (struct pci_dev*) ;
 int skd_destruct (struct skd_device*) ;
 int skd_major ;
 int skd_pci_info (struct skd_device*,char*) ;
 int skd_release_irq (struct skd_device*) ;
 int skd_start_device (struct skd_device*) ;
 int skd_start_timer (struct skd_device*) ;
 int skd_stop_device (struct skd_device*) ;
 int wait_event_interruptible_timeout (int ,scalar_t__,int) ;

__attribute__((used)) static int skd_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 int i;
 int rc = 0;
 char pci_str[32];
 struct skd_device *skdev;

 dev_dbg(&pdev->dev, "vendor=%04X device=%04x\n", pdev->vendor,
  pdev->device);

 rc = pci_enable_device(pdev);
 if (rc)
  return rc;
 rc = pci_request_regions(pdev, DRV_NAME);
 if (rc)
  goto err_out;
 rc = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64));
 if (rc)
  rc = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(32));
 if (rc) {
  dev_err(&pdev->dev, "DMA mask error %d\n", rc);
  goto err_out_regions;
 }

 if (!skd_major) {
  rc = register_blkdev(0, DRV_NAME);
  if (rc < 0)
   goto err_out_regions;
  BUG_ON(!rc);
  skd_major = rc;
 }

 skdev = skd_construct(pdev);
 if (skdev == ((void*)0)) {
  rc = -ENOMEM;
  goto err_out_regions;
 }

 skd_pci_info(skdev, pci_str);
 dev_info(&pdev->dev, "%s 64bit\n", pci_str);

 pci_set_master(pdev);
 rc = pci_enable_pcie_error_reporting(pdev);
 if (rc) {
  dev_err(&pdev->dev,
   "bad enable of PCIe error reporting rc=%d\n", rc);
  skdev->pcie_error_reporting_is_enabled = 0;
 } else
  skdev->pcie_error_reporting_is_enabled = 1;

 pci_set_drvdata(pdev, skdev);

 for (i = 0; i < SKD_MAX_BARS; i++) {
  skdev->mem_phys[i] = pci_resource_start(pdev, i);
  skdev->mem_size[i] = (u32)pci_resource_len(pdev, i);
  skdev->mem_map[i] = ioremap(skdev->mem_phys[i],
         skdev->mem_size[i]);
  if (!skdev->mem_map[i]) {
   dev_err(&pdev->dev,
    "Unable to map adapter memory!\n");
   rc = -ENODEV;
   goto err_out_iounmap;
  }
  dev_dbg(&pdev->dev, "mem_map=%p, phyd=%016llx, size=%d\n",
   skdev->mem_map[i], (uint64_t)skdev->mem_phys[i],
   skdev->mem_size[i]);
 }

 rc = skd_acquire_irq(skdev);
 if (rc) {
  dev_err(&pdev->dev, "interrupt resource error %d\n", rc);
  goto err_out_iounmap;
 }

 rc = skd_start_timer(skdev);
 if (rc)
  goto err_out_timer;

 init_waitqueue_head(&skdev->waitq);

 skd_start_device(skdev);

 rc = wait_event_interruptible_timeout(skdev->waitq,
           (skdev->gendisk_on),
           (SKD_START_WAIT_SECONDS * HZ));
 if (skdev->gendisk_on > 0) {

  skd_bdev_attach(&pdev->dev, skdev);
  rc = 0;
 } else {


  dev_err(&pdev->dev, "error: waiting for s1120 timed out %d!\n",
   rc);

  if (!rc)
   rc = -ENXIO;
  goto err_out_timer;
 }

 return rc;

err_out_timer:
 skd_stop_device(skdev);
 skd_release_irq(skdev);

err_out_iounmap:
 for (i = 0; i < SKD_MAX_BARS; i++)
  if (skdev->mem_map[i])
   iounmap(skdev->mem_map[i]);

 if (skdev->pcie_error_reporting_is_enabled)
  pci_disable_pcie_error_reporting(pdev);

 skd_destruct(skdev);

err_out_regions:
 pci_release_regions(pdev);

err_out:
 pci_disable_device(pdev);
 pci_set_drvdata(pdev, ((void*)0));
 return rc;
}
