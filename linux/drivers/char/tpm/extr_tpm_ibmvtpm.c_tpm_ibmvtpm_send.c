
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tpm_chip {int dev; } ;
struct ibmvtpm_dev {size_t rtce_size; int tpm_processing_cmd; int rtce_lock; int dev; int rtce_dma_handle; int vdev; scalar_t__ rtce_buf; scalar_t__ res_len; int wq; } ;


 int EINTR ;
 int EIO ;
 int H_SUCCESS ;
 int IBMVTPM_VALID_CMD ;
 int VTPM_TPM_COMMAND ;
 int dev_err (int ,char*,...) ;
 struct ibmvtpm_dev* dev_get_drvdata (int *) ;
 int dev_info (int ,char*) ;
 int ibmvtpm_send_crq (int ,int ,int ,size_t,int ) ;
 int memcpy (void*,void*,size_t) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int tpm_ibmvtpm_send(struct tpm_chip *chip, u8 *buf, size_t count)
{
 struct ibmvtpm_dev *ibmvtpm = dev_get_drvdata(&chip->dev);
 int rc, sig;

 if (!ibmvtpm->rtce_buf) {
  dev_err(ibmvtpm->dev, "ibmvtpm device is not ready\n");
  return 0;
 }

 if (count > ibmvtpm->rtce_size) {
  dev_err(ibmvtpm->dev,
   "Invalid size in send: count=%zd, rtce_size=%d\n",
   count, ibmvtpm->rtce_size);
  return -EIO;
 }

 if (ibmvtpm->tpm_processing_cmd) {
  dev_info(ibmvtpm->dev,
           "Need to wait for TPM to finish\n");

  sig = wait_event_interruptible(ibmvtpm->wq, !ibmvtpm->tpm_processing_cmd);
  if (sig)
   return -EINTR;
 }

 spin_lock(&ibmvtpm->rtce_lock);
 ibmvtpm->res_len = 0;
 memcpy((void *)ibmvtpm->rtce_buf, (void *)buf, count);





 ibmvtpm->tpm_processing_cmd = 1;

 rc = ibmvtpm_send_crq(ibmvtpm->vdev,
   IBMVTPM_VALID_CMD, VTPM_TPM_COMMAND,
   count, ibmvtpm->rtce_dma_handle);
 if (rc != H_SUCCESS) {
  dev_err(ibmvtpm->dev, "tpm_ibmvtpm_send failed rc=%d\n", rc);
  rc = 0;
  ibmvtpm->tpm_processing_cmd = 0;
 } else
  rc = 0;

 spin_unlock(&ibmvtpm->rtce_lock);
 return rc;
}
