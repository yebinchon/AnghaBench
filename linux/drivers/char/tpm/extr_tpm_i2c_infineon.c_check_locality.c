
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tpm_chip {int dummy; } ;
struct TYPE_2__ {int locality; } ;


 int TPM_ACCESS (int) ;
 int TPM_ACCESS_ACTIVE_LOCALITY ;
 int TPM_ACCESS_VALID ;
 int iic_tpm_read (int ,int*,int) ;
 TYPE_1__ tpm_dev ;

__attribute__((used)) static bool check_locality(struct tpm_chip *chip, int loc)
{
 u8 buf;
 int rc;

 rc = iic_tpm_read(TPM_ACCESS(loc), &buf, 1);
 if (rc < 0)
  return 0;

 if ((buf & (TPM_ACCESS_ACTIVE_LOCALITY | TPM_ACCESS_VALID)) ==
     (TPM_ACCESS_ACTIVE_LOCALITY | TPM_ACCESS_VALID)) {
  tpm_dev.locality = loc;
  return 1;
 }

 return 0;
}
