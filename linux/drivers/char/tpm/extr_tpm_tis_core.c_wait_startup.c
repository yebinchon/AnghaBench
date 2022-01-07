
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tpm_tis_data {int dummy; } ;
struct tpm_chip {unsigned long timeout_a; int dev; } ;


 int TPM_ACCESS (int) ;
 int TPM_ACCESS_VALID ;
 int TPM_TIMEOUT ;
 struct tpm_tis_data* dev_get_drvdata (int *) ;
 unsigned long jiffies ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int tpm_msleep (int ) ;
 int tpm_tis_read8 (struct tpm_tis_data*,int ,int*) ;

__attribute__((used)) static int wait_startup(struct tpm_chip *chip, int l)
{
 struct tpm_tis_data *priv = dev_get_drvdata(&chip->dev);
 unsigned long stop = jiffies + chip->timeout_a;

 do {
  int rc;
  u8 access;

  rc = tpm_tis_read8(priv, TPM_ACCESS(l), &access);
  if (rc < 0)
   return rc;

  if (access & TPM_ACCESS_VALID)
   return 0;
  tpm_msleep(TPM_TIMEOUT);
 } while (time_before(jiffies, stop));
 return -1;
}
