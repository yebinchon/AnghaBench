
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tpm_chip {int dummy; } ;


 int TPM_STS_ERR_VAL ;
 int i2c_nuvoton_read_status (struct tpm_chip*) ;

__attribute__((used)) static bool i2c_nuvoton_check_status(struct tpm_chip *chip, u8 mask, u8 value)
{
 u8 status = i2c_nuvoton_read_status(chip);
 return (status != TPM_STS_ERR_VAL) && ((status & mask) == value);
}
