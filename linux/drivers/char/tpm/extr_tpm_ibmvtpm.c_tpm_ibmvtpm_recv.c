
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u16 ;
struct tpm_chip {int dev; } ;
struct ibmvtpm_dev {size_t res_len; int rtce_lock; scalar_t__ rtce_buf; int dev; int tpm_processing_cmd; int wq; } ;


 int EINTR ;
 int EIO ;
 int dev_err (int ,char*,...) ;
 struct ibmvtpm_dev* dev_get_drvdata (int *) ;
 int memcpy (void*,void*,size_t) ;
 int memset (scalar_t__,int ,size_t) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int tpm_ibmvtpm_recv(struct tpm_chip *chip, u8 *buf, size_t count)
{
 struct ibmvtpm_dev *ibmvtpm = dev_get_drvdata(&chip->dev);
 u16 len;
 int sig;

 if (!ibmvtpm->rtce_buf) {
  dev_err(ibmvtpm->dev, "ibmvtpm device is not ready\n");
  return 0;
 }

 sig = wait_event_interruptible(ibmvtpm->wq, !ibmvtpm->tpm_processing_cmd);
 if (sig)
  return -EINTR;

 len = ibmvtpm->res_len;

 if (count < len) {
  dev_err(ibmvtpm->dev,
   "Invalid size in recv: count=%zd, crq_size=%d\n",
   count, len);
  return -EIO;
 }

 spin_lock(&ibmvtpm->rtce_lock);
 memcpy((void *)buf, (void *)ibmvtpm->rtce_buf, len);
 memset(ibmvtpm->rtce_buf, 0, len);
 ibmvtpm->res_len = 0;
 spin_unlock(&ibmvtpm->rtce_lock);
 return len;
}
