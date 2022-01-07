
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct tpm_chip {int dummy; } ;


 scalar_t__ TPM_STS_COMMAND_READY ;

__attribute__((used)) static bool i2c_nuvoton_req_canceled(struct tpm_chip *chip, u8 status)
{
 return (status == TPM_STS_COMMAND_READY);
}
