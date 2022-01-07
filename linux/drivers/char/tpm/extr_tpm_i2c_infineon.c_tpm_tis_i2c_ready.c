
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tpm_chip {int dummy; } ;
struct TYPE_2__ {int locality; } ;


 int TPM_STS (int ) ;
 int TPM_STS_COMMAND_READY ;
 int iic_tpm_write_long (int ,int *,int) ;
 TYPE_1__ tpm_dev ;

__attribute__((used)) static void tpm_tis_i2c_ready(struct tpm_chip *chip)
{

 u8 buf = TPM_STS_COMMAND_READY;
 iic_tpm_write_long(TPM_STS(tpm_dev.locality), &buf, 1);
}
