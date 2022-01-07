
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct tpm_chip {struct device dev; } ;
struct crb_priv {int dummy; } ;


 int __crb_cmd_ready (struct device*,struct crb_priv*) ;
 struct crb_priv* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int crb_cmd_ready(struct tpm_chip *chip)
{
 struct device *dev = &chip->dev;
 struct crb_priv *priv = dev_get_drvdata(dev);

 return __crb_cmd_ready(dev, priv);
}
