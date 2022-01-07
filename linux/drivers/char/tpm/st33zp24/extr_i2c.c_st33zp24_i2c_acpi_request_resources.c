
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int dev; } ;
struct st33zp24_i2c_phy {int io_lpcpd; } ;
struct st33zp24_dev {struct st33zp24_i2c_phy* phy_id; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
struct gpio_desc {int dummy; } ;


 int GPIOD_OUT_HIGH ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int acpi_st33zp24_gpios ;
 int desc_to_gpio (struct gpio_desc*) ;
 int dev_err (struct device*,char*) ;
 struct st33zp24_dev* dev_get_drvdata (int *) ;
 int devm_acpi_dev_add_driver_gpios (struct device*,int ) ;
 struct gpio_desc* devm_gpiod_get (struct device*,char*,int ) ;
 struct tpm_chip* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int st33zp24_i2c_acpi_request_resources(struct i2c_client *client)
{
 struct tpm_chip *chip = i2c_get_clientdata(client);
 struct st33zp24_dev *tpm_dev = dev_get_drvdata(&chip->dev);
 struct st33zp24_i2c_phy *phy = tpm_dev->phy_id;
 struct gpio_desc *gpiod_lpcpd;
 struct device *dev = &client->dev;
 int ret;

 ret = devm_acpi_dev_add_driver_gpios(dev, acpi_st33zp24_gpios);
 if (ret)
  return ret;


 gpiod_lpcpd = devm_gpiod_get(dev, "lpcpd", GPIOD_OUT_HIGH);
 if (IS_ERR(gpiod_lpcpd)) {
  dev_err(&client->dev,
   "Failed to retrieve lpcpd-gpios from acpi.\n");
  phy->io_lpcpd = -1;





  return 0;
 }

 phy->io_lpcpd = desc_to_gpio(gpiod_lpcpd);

 return 0;
}
