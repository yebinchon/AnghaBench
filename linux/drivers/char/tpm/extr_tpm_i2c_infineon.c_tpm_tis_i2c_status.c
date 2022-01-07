
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tpm_chip {int dummy; } ;
struct TYPE_2__ {int locality; } ;


 int TPM_STS (int ) ;
 scalar_t__ iic_tpm_read (int ,int*,int) ;
 TYPE_1__ tpm_dev ;

__attribute__((used)) static u8 tpm_tis_i2c_status(struct tpm_chip *chip)
{

 u8 buf = 0xFF;
 u8 i = 0;

 do {
  if (iic_tpm_read(TPM_STS(tpm_dev.locality), &buf, 1) < 0)
   return 0;

  i++;

 } while ((buf == 0xFF) && i < 10);

 return buf;
}
