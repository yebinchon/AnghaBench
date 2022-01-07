
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvtpm_dev {int tpm_processing_cmd; int wq; void* res_len; int vtpm_version; int dev; int * rtce_buf; int rtce_dma_handle; void* rtce_size; } ;
struct ibmvtpm_crq {int valid; int len; int data; int msg; } ;


 int DMA_BIDIRECTIONAL ;
 int GFP_ATOMIC ;







 void* be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int dev_err (int ,char*,...) ;
 int dev_info (int ,char*) ;
 int dma_map_single (int ,int *,void*,int ) ;
 int dma_mapping_error (int ,int ) ;
 int ibmvtpm_crq_send_init_complete (struct ibmvtpm_dev*) ;
 int kfree (int *) ;
 int * kmalloc (void*,int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void ibmvtpm_crq_process(struct ibmvtpm_crq *crq,
    struct ibmvtpm_dev *ibmvtpm)
{
 int rc = 0;

 switch (crq->valid) {
 case 131:
  switch (crq->msg) {
  case 132:
   dev_info(ibmvtpm->dev, "CRQ initialized\n");
   rc = ibmvtpm_crq_send_init_complete(ibmvtpm);
   if (rc)
    dev_err(ibmvtpm->dev, "Unable to send CRQ init complete rc=%d\n", rc);
   return;
  case 133:
   dev_info(ibmvtpm->dev,
     "CRQ initialization completed\n");
   return;
  default:
   dev_err(ibmvtpm->dev, "Unknown crq message type: %d\n", crq->msg);
   return;
  }
 case 134:
  switch (crq->msg) {
  case 130:
   if (be16_to_cpu(crq->len) <= 0) {
    dev_err(ibmvtpm->dev, "Invalid rtce size\n");
    return;
   }
   ibmvtpm->rtce_size = be16_to_cpu(crq->len);
   ibmvtpm->rtce_buf = kmalloc(ibmvtpm->rtce_size,
          GFP_ATOMIC);
   if (!ibmvtpm->rtce_buf) {
    dev_err(ibmvtpm->dev, "Failed to allocate memory for rtce buffer\n");
    return;
   }

   ibmvtpm->rtce_dma_handle = dma_map_single(ibmvtpm->dev,
    ibmvtpm->rtce_buf, ibmvtpm->rtce_size,
    DMA_BIDIRECTIONAL);

   if (dma_mapping_error(ibmvtpm->dev,
           ibmvtpm->rtce_dma_handle)) {
    kfree(ibmvtpm->rtce_buf);
    ibmvtpm->rtce_buf = ((void*)0);
    dev_err(ibmvtpm->dev, "Failed to dma map rtce buffer\n");
   }

   return;
  case 129:
   ibmvtpm->vtpm_version = be32_to_cpu(crq->data);
   return;
  case 128:

   ibmvtpm->res_len = be16_to_cpu(crq->len);
   ibmvtpm->tpm_processing_cmd = 0;
   wake_up_interruptible(&ibmvtpm->wq);
   return;
  default:
   return;
  }
 }
 return;
}
