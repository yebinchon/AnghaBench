
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int dev; void* timeout_d; void* timeout_c; void* timeout_b; void* timeout_a; } ;
struct priv_data {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int adapter; struct device dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_I2C ;
 scalar_t__ IS_ERR (struct tpm_chip*) ;
 int PTR_ERR (struct tpm_chip*) ;
 int TPM_I2C_LONG_TIMEOUT ;
 int TPM_I2C_SHORT_TIMEOUT ;
 int dev_set_drvdata (int *,struct priv_data*) ;
 struct priv_data* devm_kzalloc (struct device*,int,int ) ;
 int i2c_atmel ;
 int i2c_check_functionality (int ,int ) ;
 void* msecs_to_jiffies (int ) ;
 int tpm_chip_register (struct tpm_chip*) ;
 struct tpm_chip* tpmm_chip_alloc (struct device*,int *) ;

__attribute__((used)) static int i2c_atmel_probe(struct i2c_client *client,
      const struct i2c_device_id *id)
{
 struct tpm_chip *chip;
 struct device *dev = &client->dev;
 struct priv_data *priv;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C))
  return -ENODEV;

 chip = tpmm_chip_alloc(dev, &i2c_atmel);
 if (IS_ERR(chip))
  return PTR_ERR(chip);

 priv = devm_kzalloc(dev, sizeof(struct priv_data), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;


 chip->timeout_a = msecs_to_jiffies(TPM_I2C_SHORT_TIMEOUT);
 chip->timeout_b = msecs_to_jiffies(TPM_I2C_LONG_TIMEOUT);
 chip->timeout_c = msecs_to_jiffies(TPM_I2C_SHORT_TIMEOUT);
 chip->timeout_d = msecs_to_jiffies(TPM_I2C_SHORT_TIMEOUT);

 dev_set_drvdata(&chip->dev, priv);





 return tpm_chip_register(chip);
}
