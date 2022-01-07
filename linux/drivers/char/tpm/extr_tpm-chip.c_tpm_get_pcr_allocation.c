
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int flags; } ;


 int ENODEV ;
 int TPM_CHIP_FLAG_TPM2 ;
 int tpm1_get_pcr_allocation (struct tpm_chip*) ;
 int tpm2_get_pcr_allocation (struct tpm_chip*) ;

__attribute__((used)) static int tpm_get_pcr_allocation(struct tpm_chip *chip)
{
 int rc;

 rc = (chip->flags & TPM_CHIP_FLAG_TPM2) ?
      tpm2_get_pcr_allocation(chip) :
      tpm1_get_pcr_allocation(chip);

 if (rc > 0)
  return -ENODEV;

 return rc;
}
