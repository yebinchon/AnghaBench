
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tpm_chip {int dummy; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int * client; int locality; struct tpm_chip* chip; } ;


 int release_locality (struct tpm_chip*,int ,int) ;
 int tpm_chip_unregister (struct tpm_chip*) ;
 TYPE_1__ tpm_dev ;

__attribute__((used)) static int tpm_tis_i2c_remove(struct i2c_client *client)
{
 struct tpm_chip *chip = tpm_dev.chip;

 tpm_chip_unregister(chip);
 release_locality(chip, tpm_dev.locality, 1);
 tpm_dev.client = ((void*)0);

 return 0;
}
