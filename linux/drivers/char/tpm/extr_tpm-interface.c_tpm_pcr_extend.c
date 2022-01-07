
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tpm_digest {scalar_t__ alg_id; int digest; } ;
struct tpm_chip {int nr_allocated_banks; int flags; TYPE_1__* allocated_banks; } ;
struct TYPE_2__ {scalar_t__ alg_id; } ;


 int EINVAL ;
 int ENODEV ;
 int TPM_CHIP_FLAG_TPM2 ;
 int tpm1_pcr_extend (struct tpm_chip*,int ,int ,char*) ;
 int tpm2_pcr_extend (struct tpm_chip*,int ,struct tpm_digest*) ;
 struct tpm_chip* tpm_find_get_ops (struct tpm_chip*) ;
 int tpm_put_ops (struct tpm_chip*) ;

int tpm_pcr_extend(struct tpm_chip *chip, u32 pcr_idx,
     struct tpm_digest *digests)
{
 int rc;
 int i;

 chip = tpm_find_get_ops(chip);
 if (!chip)
  return -ENODEV;

 for (i = 0; i < chip->nr_allocated_banks; i++) {
  if (digests[i].alg_id != chip->allocated_banks[i].alg_id) {
   rc = EINVAL;
   goto out;
  }
 }

 if (chip->flags & TPM_CHIP_FLAG_TPM2) {
  rc = tpm2_pcr_extend(chip, pcr_idx, digests);
  goto out;
 }

 rc = tpm1_pcr_extend(chip, pcr_idx, digests[0].digest,
        "attempting extend a PCR value");

out:
 tpm_put_ops(chip);
 return rc;
}
