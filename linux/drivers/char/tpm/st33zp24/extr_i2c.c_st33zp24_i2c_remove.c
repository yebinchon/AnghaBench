
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int dummy; } ;
struct i2c_client {int dummy; } ;


 struct tpm_chip* i2c_get_clientdata (struct i2c_client*) ;
 int st33zp24_remove (struct tpm_chip*) ;

__attribute__((used)) static int st33zp24_i2c_remove(struct i2c_client *client)
{
 struct tpm_chip *chip = i2c_get_clientdata(client);
 int ret;

 ret = st33zp24_remove(chip);
 if (ret)
  return ret;

 return 0;
}
