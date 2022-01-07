
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tpm_chip {int dummy; } ;


 int TPM_ACCESS (int) ;
 int TPM_ACCESS_ACTIVE_LOCALITY ;
 int TPM_ACCESS_REQUEST_PENDING ;
 int TPM_ACCESS_VALID ;
 scalar_t__ iic_tpm_read (int ,int*,int) ;
 int iic_tpm_write (int ,int*,int) ;

__attribute__((used)) static void release_locality(struct tpm_chip *chip, int loc, int force)
{
 u8 buf;
 if (iic_tpm_read(TPM_ACCESS(loc), &buf, 1) < 0)
  return;

 if (force || (buf & (TPM_ACCESS_REQUEST_PENDING | TPM_ACCESS_VALID)) ==
     (TPM_ACCESS_REQUEST_PENDING | TPM_ACCESS_VALID)) {
  buf = TPM_ACCESS_ACTIVE_LOCALITY;
  iic_tpm_write(TPM_ACCESS(loc), &buf, 1);
 }
}
