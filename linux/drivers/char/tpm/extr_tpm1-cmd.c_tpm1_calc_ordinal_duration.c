
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct tpm_chip {int* duration; } ;


 int HZ ;
 size_t TPM_MAX_ORDINAL ;
 int TPM_UNDEFINED ;
 int* tpm1_ordinal_duration ;

unsigned long tpm1_calc_ordinal_duration(struct tpm_chip *chip, u32 ordinal)
{
 int duration_idx = TPM_UNDEFINED;
 int duration = 0;





 if (ordinal < TPM_MAX_ORDINAL)
  duration_idx = tpm1_ordinal_duration[ordinal];

 if (duration_idx != TPM_UNDEFINED)
  duration = chip->duration[duration_idx];
 if (duration <= 0)
  return 2 * 60 * HZ;
 else
  return duration;
}
