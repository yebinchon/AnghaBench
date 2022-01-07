
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tpm_chip {int dev; } ;
struct st33zp24_i2c_phy {int io_lpcpd; } ;
struct st33zp24_dev {struct st33zp24_i2c_phy* phy_id; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int GPIOF_OUT_INIT_HIGH ;
 int dev_err (TYPE_1__*,char*) ;
 struct st33zp24_dev* dev_get_drvdata (int *) ;
 int devm_gpio_request_one (TYPE_1__*,int,int ,char*) ;
 struct tpm_chip* i2c_get_clientdata (struct i2c_client*) ;
 int of_get_named_gpio (struct device_node*,char*,int ) ;

__attribute__((used)) static int st33zp24_i2c_of_request_resources(struct i2c_client *client)
{
 struct tpm_chip *chip = i2c_get_clientdata(client);
 struct st33zp24_dev *tpm_dev = dev_get_drvdata(&chip->dev);
 struct st33zp24_i2c_phy *phy = tpm_dev->phy_id;
 struct device_node *pp;
 int gpio;
 int ret;

 pp = client->dev.of_node;
 if (!pp) {
  dev_err(&client->dev, "No platform data\n");
  return -ENODEV;
 }


 gpio = of_get_named_gpio(pp, "lpcpd-gpios", 0);
 if (gpio < 0) {
  dev_err(&client->dev,
   "Failed to retrieve lpcpd-gpios from dts.\n");
  phy->io_lpcpd = -1;





  return 0;
 }

 ret = devm_gpio_request_one(&client->dev, gpio,
   GPIOF_OUT_INIT_HIGH, "TPM IO LPCPD");
 if (ret) {
  dev_err(&client->dev, "Failed to request lpcpd pin\n");
  return -ENODEV;
 }
 phy->io_lpcpd = gpio;

 return 0;
}
