
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tpm_chip {int flags; } ;


 int TPM_CHIP_FLAG_TPM2 ;
 unsigned long tpm1_calc_ordinal_duration (struct tpm_chip*,int ) ;
 unsigned long tpm2_calc_ordinal_duration (struct tpm_chip*,int ) ;

unsigned long tpm_calc_ordinal_duration(struct tpm_chip *chip, u32 ordinal)
{
 if (chip->flags & TPM_CHIP_FLAG_TPM2)
  return tpm2_calc_ordinal_duration(chip, ordinal);
 else
  return tpm1_calc_ordinal_duration(chip, ordinal);
}
