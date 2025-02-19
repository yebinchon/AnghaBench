
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tpm_chip {int flags; } ;


 int EINVAL ;
 int ENODEV ;
 int TPM_CHIP_FLAG_TPM2 ;
 size_t TPM_MAX_RNG_DATA ;
 int tpm1_get_random (struct tpm_chip*,int *,size_t) ;
 int tpm2_get_random (struct tpm_chip*,int *,size_t) ;
 struct tpm_chip* tpm_find_get_ops (struct tpm_chip*) ;
 int tpm_put_ops (struct tpm_chip*) ;

int tpm_get_random(struct tpm_chip *chip, u8 *out, size_t max)
{
 int rc;

 if (!out || max > TPM_MAX_RNG_DATA)
  return -EINVAL;

 chip = tpm_find_get_ops(chip);
 if (!chip)
  return -ENODEV;

 if (chip->flags & TPM_CHIP_FLAG_TPM2)
  rc = tpm2_get_random(chip, out, max);
 else
  rc = tpm1_get_random(chip, out, max);

 tpm_put_ops(chip);
 return rc;
}
