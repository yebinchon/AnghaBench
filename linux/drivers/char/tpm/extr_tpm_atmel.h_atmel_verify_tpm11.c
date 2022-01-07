
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TPM_ADDR ;
 int tpm_read_index (int ,int) ;

__attribute__((used)) static int atmel_verify_tpm11(void)
{


 if (tpm_read_index(TPM_ADDR, 4) != 'A' ||
     tpm_read_index(TPM_ADDR, 5) != 'T' ||
     tpm_read_index(TPM_ADDR, 6) != 'M' ||
     tpm_read_index(TPM_ADDR, 7) != 'L')
  return 1;


 if (tpm_read_index(TPM_ADDR, 0x00) != 1 ||
     tpm_read_index(TPM_ADDR, 0x01) != 1)
  return 1;


 return 0;
}
