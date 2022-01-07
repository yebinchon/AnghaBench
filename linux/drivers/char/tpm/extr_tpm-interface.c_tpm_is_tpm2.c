
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int flags; } ;


 int ENODEV ;
 int TPM_CHIP_FLAG_TPM2 ;
 struct tpm_chip* tpm_find_get_ops (struct tpm_chip*) ;
 int tpm_put_ops (struct tpm_chip*) ;

int tpm_is_tpm2(struct tpm_chip *chip)
{
 int rc;

 chip = tpm_find_get_ops(chip);
 if (!chip)
  return -ENODEV;

 rc = (chip->flags & TPM_CHIP_FLAG_TPM2) != 0;

 tpm_put_ops(chip);

 return rc;
}
