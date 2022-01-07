
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int flags; void** duration; void* timeout_d; void* timeout_c; void* timeout_b; void* timeout_a; } ;


 int TPM2_DURATION_LONG ;
 int TPM2_DURATION_LONG_LONG ;
 int TPM2_DURATION_MEDIUM ;
 int TPM2_DURATION_SHORT ;
 int TPM2_TIMEOUT_A ;
 int TPM2_TIMEOUT_B ;
 int TPM2_TIMEOUT_C ;
 int TPM2_TIMEOUT_D ;
 int TPM_CHIP_FLAG_HAVE_TIMEOUTS ;
 size_t TPM_LONG ;
 size_t TPM_LONG_LONG ;
 size_t TPM_MEDIUM ;
 size_t TPM_SHORT ;
 void* msecs_to_jiffies (int ) ;

int tpm2_get_timeouts(struct tpm_chip *chip)
{

 chip->timeout_a = msecs_to_jiffies(TPM2_TIMEOUT_A);
 chip->timeout_b = msecs_to_jiffies(TPM2_TIMEOUT_B);
 chip->timeout_c = msecs_to_jiffies(TPM2_TIMEOUT_C);
 chip->timeout_d = msecs_to_jiffies(TPM2_TIMEOUT_D);


 chip->duration[TPM_SHORT] = msecs_to_jiffies(TPM2_DURATION_SHORT);
 chip->duration[TPM_MEDIUM] = msecs_to_jiffies(TPM2_DURATION_MEDIUM);
 chip->duration[TPM_LONG] = msecs_to_jiffies(TPM2_DURATION_LONG);


 chip->duration[TPM_LONG_LONG] =
  msecs_to_jiffies(TPM2_DURATION_LONG_LONG);

 chip->flags |= TPM_CHIP_FLAG_HAVE_TIMEOUTS;

 return 0;
}
