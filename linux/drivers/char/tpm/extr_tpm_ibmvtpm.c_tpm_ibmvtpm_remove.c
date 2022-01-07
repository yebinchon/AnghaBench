
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vio_dev {int dev; int unit_address; int irq; } ;
struct tpm_chip {int dev; } ;
struct TYPE_2__ {scalar_t__ crq_addr; } ;
struct ibmvtpm_dev {struct ibmvtpm_dev* rtce_buf; int rtce_size; int rtce_dma_handle; int dev; TYPE_1__ crq_queue; int crq_dma_handle; } ;


 int CRQ_RES_BUF_SIZE ;
 int DMA_BIDIRECTIONAL ;
 int H_BUSY ;
 int H_FREE_CRQ ;
 scalar_t__ H_IS_LONG_BUSY (int) ;
 void* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int free_irq (int ,struct ibmvtpm_dev*) ;
 int free_page (unsigned long) ;
 int kfree (struct ibmvtpm_dev*) ;
 int msleep (int) ;
 int plpar_hcall_norets (int ,int ) ;
 int tpm_chip_unregister (struct tpm_chip*) ;

__attribute__((used)) static int tpm_ibmvtpm_remove(struct vio_dev *vdev)
{
 struct tpm_chip *chip = dev_get_drvdata(&vdev->dev);
 struct ibmvtpm_dev *ibmvtpm = dev_get_drvdata(&chip->dev);
 int rc = 0;

 tpm_chip_unregister(chip);

 free_irq(vdev->irq, ibmvtpm);

 do {
  if (rc)
   msleep(100);
  rc = plpar_hcall_norets(H_FREE_CRQ, vdev->unit_address);
 } while (rc == H_BUSY || H_IS_LONG_BUSY(rc));

 dma_unmap_single(ibmvtpm->dev, ibmvtpm->crq_dma_handle,
    CRQ_RES_BUF_SIZE, DMA_BIDIRECTIONAL);
 free_page((unsigned long)ibmvtpm->crq_queue.crq_addr);

 if (ibmvtpm->rtce_buf) {
  dma_unmap_single(ibmvtpm->dev, ibmvtpm->rtce_dma_handle,
     ibmvtpm->rtce_size, DMA_BIDIRECTIONAL);
  kfree(ibmvtpm->rtce_buf);
 }

 kfree(ibmvtpm);

 dev_set_drvdata(&vdev->dev, ((void*)0));

 return 0;
}
