
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tpm_chip {int dev; } ;
struct st33zp24_spi_phy {int io_lpcpd; } ;
struct st33zp24_dev {struct st33zp24_spi_phy* phy_id; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct spi_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int GPIOF_OUT_INIT_HIGH ;
 int dev_err (TYPE_1__*,char*) ;
 struct st33zp24_dev* dev_get_drvdata (int *) ;
 int devm_gpio_request_one (TYPE_1__*,int,int ,char*) ;
 int of_get_named_gpio (struct device_node*,char*,int ) ;
 struct tpm_chip* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int st33zp24_spi_of_request_resources(struct spi_device *spi_dev)
{
 struct tpm_chip *chip = spi_get_drvdata(spi_dev);
 struct st33zp24_dev *tpm_dev = dev_get_drvdata(&chip->dev);
 struct st33zp24_spi_phy *phy = tpm_dev->phy_id;
 struct device_node *pp;
 int gpio;
 int ret;

 pp = spi_dev->dev.of_node;
 if (!pp) {
  dev_err(&spi_dev->dev, "No platform data\n");
  return -ENODEV;
 }


 gpio = of_get_named_gpio(pp, "lpcpd-gpios", 0);
 if (gpio < 0) {
  dev_err(&spi_dev->dev,
   "Failed to retrieve lpcpd-gpios from dts.\n");
  phy->io_lpcpd = -1;





  return 0;
 }

 ret = devm_gpio_request_one(&spi_dev->dev, gpio,
   GPIOF_OUT_INIT_HIGH, "TPM IO LPCPD");
 if (ret) {
  dev_err(&spi_dev->dev, "Failed to request lpcpd pin\n");
  return -ENODEV;
 }
 phy->io_lpcpd = gpio;

 return 0;
}
