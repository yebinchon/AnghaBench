
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int flags; } ;


 int TPM_CHIP_FLAG_HAVE_TIMEOUTS ;
 int TPM_CHIP_FLAG_TPM2 ;
 int tpm1_get_timeouts (struct tpm_chip*) ;
 int tpm2_get_timeouts (struct tpm_chip*) ;

int tpm_get_timeouts(struct tpm_chip *chip)
{
 if (chip->flags & TPM_CHIP_FLAG_HAVE_TIMEOUTS)
  return 0;

 if (chip->flags & TPM_CHIP_FLAG_TPM2)
  return tpm2_get_timeouts(chip);
 else
  return tpm1_get_timeouts(chip);
}
