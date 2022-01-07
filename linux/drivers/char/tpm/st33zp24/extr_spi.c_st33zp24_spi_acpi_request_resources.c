
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int dev; } ;
struct st33zp24_spi_phy {int io_lpcpd; } ;
struct st33zp24_dev {struct st33zp24_spi_phy* phy_id; } ;
struct device {int dummy; } ;
struct spi_device {struct device dev; } ;
struct gpio_desc {int dummy; } ;


 int GPIOD_OUT_HIGH ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int acpi_st33zp24_gpios ;
 int desc_to_gpio (struct gpio_desc*) ;
 int dev_err (struct device*,char*) ;
 struct st33zp24_dev* dev_get_drvdata (int *) ;
 int devm_acpi_dev_add_driver_gpios (struct device*,int ) ;
 struct gpio_desc* devm_gpiod_get (struct device*,char*,int ) ;
 struct tpm_chip* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int st33zp24_spi_acpi_request_resources(struct spi_device *spi_dev)
{
 struct tpm_chip *chip = spi_get_drvdata(spi_dev);
 struct st33zp24_dev *tpm_dev = dev_get_drvdata(&chip->dev);
 struct st33zp24_spi_phy *phy = tpm_dev->phy_id;
 struct gpio_desc *gpiod_lpcpd;
 struct device *dev = &spi_dev->dev;
 int ret;

 ret = devm_acpi_dev_add_driver_gpios(dev, acpi_st33zp24_gpios);
 if (ret)
  return ret;


 gpiod_lpcpd = devm_gpiod_get(dev, "lpcpd", GPIOD_OUT_HIGH);
 if (IS_ERR(gpiod_lpcpd)) {
  dev_err(dev, "Failed to retrieve lpcpd-gpios from acpi.\n");
  phy->io_lpcpd = -1;





  return 0;
 }

 phy->io_lpcpd = desc_to_gpio(gpiod_lpcpd);

 return 0;
}
