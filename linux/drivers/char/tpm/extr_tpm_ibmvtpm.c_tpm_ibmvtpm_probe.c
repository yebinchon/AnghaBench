
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_device_id {int dummy; } ;
struct device {int dummy; } ;
struct vio_dev {int unit_address; int irq; struct device dev; } ;
struct tpm_chip {int dev; } ;
struct ibmvtpm_crq_queue {int num_entry; struct ibmvtpm_crq* crq_addr; scalar_t__ index; } ;
struct ibmvtpm_dev {int crq_dma_handle; int rtce_lock; int wq; struct ibmvtpm_crq_queue crq_queue; struct vio_dev* vdev; struct device* dev; } ;
struct ibmvtpm_crq {int dummy; } ;


 int CRQ_RES_BUF_SIZE ;
 int DMA_BIDIRECTIONAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int H_BUSY ;
 int H_FREE_CRQ ;
 scalar_t__ H_IS_LONG_BUSY (int) ;
 int H_REG_CRQ ;
 int H_RESOURCE ;
 scalar_t__ IS_ERR (struct tpm_chip*) ;
 int PTR_ERR (struct tpm_chip*) ;
 int dev_err (struct device*,char*,...) ;
 int dev_set_drvdata (int *,struct ibmvtpm_dev*) ;
 int dma_map_single (struct device*,struct ibmvtpm_crq*,int,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int dma_unmap_single (struct device*,int ,int,int ) ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;
 int ibmvtpm_crq_get_rtce_size (struct ibmvtpm_dev*) ;
 int ibmvtpm_crq_get_version (struct ibmvtpm_dev*) ;
 int ibmvtpm_crq_send_init (struct ibmvtpm_dev*) ;
 int ibmvtpm_interrupt ;
 int ibmvtpm_reset_crq (struct ibmvtpm_dev*) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct ibmvtpm_dev*) ;
 struct ibmvtpm_dev* kzalloc (int,int ) ;
 int plpar_hcall_norets (int ,int ,...) ;
 int request_irq (int ,int ,int ,int ,struct ibmvtpm_dev*) ;
 int spin_lock_init (int *) ;
 int tpm_chip_register (struct tpm_chip*) ;
 int tpm_ibmvtpm ;
 int tpm_ibmvtpm_driver_name ;
 struct tpm_chip* tpmm_chip_alloc (struct device*,int *) ;
 int vio_enable_interrupts (struct vio_dev*) ;

__attribute__((used)) static int tpm_ibmvtpm_probe(struct vio_dev *vio_dev,
       const struct vio_device_id *id)
{
 struct ibmvtpm_dev *ibmvtpm;
 struct device *dev = &vio_dev->dev;
 struct ibmvtpm_crq_queue *crq_q;
 struct tpm_chip *chip;
 int rc = -ENOMEM, rc1;

 chip = tpmm_chip_alloc(dev, &tpm_ibmvtpm);
 if (IS_ERR(chip))
  return PTR_ERR(chip);

 ibmvtpm = kzalloc(sizeof(struct ibmvtpm_dev), GFP_KERNEL);
 if (!ibmvtpm) {
  dev_err(dev, "kzalloc for ibmvtpm failed\n");
  goto cleanup;
 }

 ibmvtpm->dev = dev;
 ibmvtpm->vdev = vio_dev;

 crq_q = &ibmvtpm->crq_queue;
 crq_q->crq_addr = (struct ibmvtpm_crq *)get_zeroed_page(GFP_KERNEL);
 if (!crq_q->crq_addr) {
  dev_err(dev, "Unable to allocate memory for crq_addr\n");
  goto cleanup;
 }

 crq_q->num_entry = CRQ_RES_BUF_SIZE / sizeof(*crq_q->crq_addr);
 ibmvtpm->crq_dma_handle = dma_map_single(dev, crq_q->crq_addr,
       CRQ_RES_BUF_SIZE,
       DMA_BIDIRECTIONAL);

 if (dma_mapping_error(dev, ibmvtpm->crq_dma_handle)) {
  dev_err(dev, "dma mapping failed\n");
  goto cleanup;
 }

 rc = plpar_hcall_norets(H_REG_CRQ, vio_dev->unit_address,
    ibmvtpm->crq_dma_handle, CRQ_RES_BUF_SIZE);
 if (rc == H_RESOURCE)
  rc = ibmvtpm_reset_crq(ibmvtpm);

 if (rc) {
  dev_err(dev, "Unable to register CRQ rc=%d\n", rc);
  goto reg_crq_cleanup;
 }

 rc = request_irq(vio_dev->irq, ibmvtpm_interrupt, 0,
    tpm_ibmvtpm_driver_name, ibmvtpm);
 if (rc) {
  dev_err(dev, "Error %d register irq 0x%x\n", rc, vio_dev->irq);
  goto init_irq_cleanup;
 }

 rc = vio_enable_interrupts(vio_dev);
 if (rc) {
  dev_err(dev, "Error %d enabling interrupts\n", rc);
  goto init_irq_cleanup;
 }

 init_waitqueue_head(&ibmvtpm->wq);

 crq_q->index = 0;

 dev_set_drvdata(&chip->dev, ibmvtpm);

 spin_lock_init(&ibmvtpm->rtce_lock);

 rc = ibmvtpm_crq_send_init(ibmvtpm);
 if (rc)
  goto init_irq_cleanup;

 rc = ibmvtpm_crq_get_version(ibmvtpm);
 if (rc)
  goto init_irq_cleanup;

 rc = ibmvtpm_crq_get_rtce_size(ibmvtpm);
 if (rc)
  goto init_irq_cleanup;

 return tpm_chip_register(chip);
init_irq_cleanup:
 do {
  rc1 = plpar_hcall_norets(H_FREE_CRQ, vio_dev->unit_address);
 } while (rc1 == H_BUSY || H_IS_LONG_BUSY(rc1));
reg_crq_cleanup:
 dma_unmap_single(dev, ibmvtpm->crq_dma_handle, CRQ_RES_BUF_SIZE,
    DMA_BIDIRECTIONAL);
cleanup:
 if (ibmvtpm) {
  if (crq_q->crq_addr)
   free_page((unsigned long)crq_q->crq_addr);
  kfree(ibmvtpm);
 }

 return rc;
}
