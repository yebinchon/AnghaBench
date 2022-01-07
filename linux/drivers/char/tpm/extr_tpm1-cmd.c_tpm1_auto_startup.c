
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int dev; } ;


 int ENODEV ;
 int dev_err (int *,char*) ;
 int tpm1_do_selftest (struct tpm_chip*) ;
 int tpm1_get_timeouts (struct tpm_chip*) ;

int tpm1_auto_startup(struct tpm_chip *chip)
{
 int rc;

 rc = tpm1_get_timeouts(chip);
 if (rc)
  goto out;
 rc = tpm1_do_selftest(chip);
 if (rc) {
  dev_err(&chip->dev, "TPM self test failed\n");
  goto out;
 }

 return rc;
out:
 if (rc > 0)
  rc = -ENODEV;
 return rc;
}
