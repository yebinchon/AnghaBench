
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_nsc_priv {scalar_t__ base; } ;
struct tpm_chip {int dev; } ;


 int EBUSY ;
 scalar_t__ NSC_DATA ;
 scalar_t__ NSC_STATUS ;
 int NSC_STATUS_OBF ;
 int NSC_STATUS_RDY ;
 int TPM_TIMEOUT ;
 struct tpm_nsc_priv* dev_get_drvdata (int *) ;
 int dev_info (int *,char*) ;
 int inb (scalar_t__) ;
 int jiffies ;
 int msleep (int ) ;
 scalar_t__ time_before (int,unsigned long) ;

__attribute__((used)) static int nsc_wait_for_ready(struct tpm_chip *chip)
{
 struct tpm_nsc_priv *priv = dev_get_drvdata(&chip->dev);
 int status;
 unsigned long stop;


 status = inb(priv->base + NSC_STATUS);
 if (status & NSC_STATUS_OBF)
  status = inb(priv->base + NSC_DATA);
 if (status & NSC_STATUS_RDY)
  return 0;


 stop = jiffies + 100;
 do {
  msleep(TPM_TIMEOUT);
  status = inb(priv->base + NSC_STATUS);
  if (status & NSC_STATUS_OBF)
   status = inb(priv->base + NSC_DATA);
  if (status & NSC_STATUS_RDY)
   return 0;
 }
 while (time_before(jiffies, stop));

 dev_info(&chip->dev, "wait for ready failed\n");
 return -EBUSY;
}
