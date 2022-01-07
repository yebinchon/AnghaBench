
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tpm_tis_data {int locality; } ;
struct tpm_chip {int flags; unsigned long timeout_a; unsigned long timeout_d; int dev; } ;


 int EBUSY ;
 int TPM_CHIP_FLAG_TPM2 ;
 int TPM_STS (int ) ;
 int TPM_TIMEOUT_USECS_MAX ;
 int TPM_TIMEOUT_USECS_MIN ;
 struct tpm_tis_data* dev_get_drvdata (int *) ;
 unsigned long jiffies ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int tpm_tis_read32 (struct tpm_tis_data*,int ,int*) ;
 int usleep_range (int ,int ) ;

__attribute__((used)) static int get_burstcount(struct tpm_chip *chip)
{
 struct tpm_tis_data *priv = dev_get_drvdata(&chip->dev);
 unsigned long stop;
 int burstcnt, rc;
 u32 value;


 if (chip->flags & TPM_CHIP_FLAG_TPM2)
  stop = jiffies + chip->timeout_a;
 else
  stop = jiffies + chip->timeout_d;
 do {
  rc = tpm_tis_read32(priv, TPM_STS(priv->locality), &value);
  if (rc < 0)
   return rc;

  burstcnt = (value >> 8) & 0xFFFF;
  if (burstcnt)
   return burstcnt;
  usleep_range(TPM_TIMEOUT_USECS_MIN, TPM_TIMEOUT_USECS_MAX);
 } while (time_before(jiffies, stop));
 return -EBUSY;
}
