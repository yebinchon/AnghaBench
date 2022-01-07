
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb91x_nand_info {int gpio_rdy; int dev; int gpio_read; int gpio_ale; int gpio_cle; int gpio_nrw; int gpio_nce; int gpio_nle; } ;


 int GPIOF_IN ;
 int GPIOF_OUT_INIT_HIGH ;
 int GPIOF_OUT_INIT_LOW ;
 int devm_gpio_request_one (int ,int ,int ,char*) ;

__attribute__((used)) static int rb91x_nand_gpio_init(struct rb91x_nand_info *info)
{
 int ret;





 ret = devm_gpio_request_one(info->dev, info->gpio_nle,
        GPIOF_OUT_INIT_HIGH, "LATCH enable");
 if (ret)
  return ret;

 ret = devm_gpio_request_one(info->dev, info->gpio_nce,
        GPIOF_OUT_INIT_HIGH, "NAND nCE");
 if (ret)
  return ret;

 ret = devm_gpio_request_one(info->dev, info->gpio_nrw,
        GPIOF_OUT_INIT_HIGH, "NAND nRW");
 if (ret)
  return ret;

 ret = devm_gpio_request_one(info->dev, info->gpio_cle,
        GPIOF_OUT_INIT_LOW, "NAND CLE");
 if (ret)
  return ret;

 ret = devm_gpio_request_one(info->dev, info->gpio_ale,
        GPIOF_OUT_INIT_LOW, "NAND ALE");
 if (ret)
  return ret;

 ret = devm_gpio_request_one(info->dev, info->gpio_read,
        GPIOF_OUT_INIT_LOW, "NAND READ");
 if (ret)
  return ret;

 ret = devm_gpio_request_one(info->dev, info->gpio_rdy,
        GPIOF_IN, "NAND RDY");
 return ret;
}
