
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tpm_chip {unsigned long* duration; } ;


 int TPM2_DURATION_DEFAULT ;
 unsigned int TPM_UNDEFINED ;
 unsigned long msecs_to_jiffies (int ) ;
 unsigned int tpm2_ordinal_duration_index (int ) ;

unsigned long tpm2_calc_ordinal_duration(struct tpm_chip *chip, u32 ordinal)
{
 unsigned int index;

 index = tpm2_ordinal_duration_index(ordinal);

 if (index != TPM_UNDEFINED)
  return chip->duration[index];
 else
  return msecs_to_jiffies(TPM2_DURATION_DEFAULT);
}
