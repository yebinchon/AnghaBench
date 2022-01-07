
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int dev; } ;


 int dev_err (int *,char*) ;

__attribute__((used)) static void i2c_atmel_cancel(struct tpm_chip *chip)
{
 dev_err(&chip->dev, "TPM operation cancellation was requested, but is not supported");
}
