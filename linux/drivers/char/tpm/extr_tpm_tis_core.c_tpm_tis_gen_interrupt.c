
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tpm_chip {int flags; } ;
typedef int cap_t ;


 int TPM_CAP_PROP_TIS_TIMEOUT ;
 int TPM_CHIP_FLAG_TPM2 ;
 int tpm1_getcap (struct tpm_chip*,int ,int *,char const*,int ) ;
 int tpm2_get_tpm_pt (struct tpm_chip*,int,int *,char const*) ;

__attribute__((used)) static int tpm_tis_gen_interrupt(struct tpm_chip *chip)
{
 const char *desc = "attempting to generate an interrupt";
 u32 cap2;
 cap_t cap;

 if (chip->flags & TPM_CHIP_FLAG_TPM2)
  return tpm2_get_tpm_pt(chip, 0x100, &cap2, desc);
 else
  return tpm1_getcap(chip, TPM_CAP_PROP_TIS_TIMEOUT, &cap, desc,
      0);
}
