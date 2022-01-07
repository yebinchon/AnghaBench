
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tpm_digest {int digest; } ;
struct tpm_chip {int flags; } ;


 int ENODEV ;
 int TPM_CHIP_FLAG_TPM2 ;
 int tpm1_pcr_read (struct tpm_chip*,int ,int ) ;
 int tpm2_pcr_read (struct tpm_chip*,int ,struct tpm_digest*,int *) ;
 struct tpm_chip* tpm_find_get_ops (struct tpm_chip*) ;
 int tpm_put_ops (struct tpm_chip*) ;

int tpm_pcr_read(struct tpm_chip *chip, u32 pcr_idx,
   struct tpm_digest *digest)
{
 int rc;

 chip = tpm_find_get_ops(chip);
 if (!chip)
  return -ENODEV;

 if (chip->flags & TPM_CHIP_FLAG_TPM2)
  rc = tpm2_pcr_read(chip, pcr_idx, digest, ((void*)0));
 else
  rc = tpm1_pcr_read(chip, pcr_idx, digest->digest);

 tpm_put_ops(chip);
 return rc;
}
