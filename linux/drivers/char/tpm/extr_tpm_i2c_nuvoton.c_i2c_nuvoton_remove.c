
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int dummy; } ;
struct i2c_client {int dummy; } ;


 struct tpm_chip* i2c_get_clientdata (struct i2c_client*) ;
 int tpm_chip_unregister (struct tpm_chip*) ;

__attribute__((used)) static int i2c_nuvoton_remove(struct i2c_client *client)
{
 struct tpm_chip *chip = i2c_get_clientdata(client);

 tpm_chip_unregister(chip);
 return 0;
}
