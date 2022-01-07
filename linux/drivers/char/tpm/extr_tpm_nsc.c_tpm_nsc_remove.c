
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_nsc_priv {int base; } ;
struct device {int dummy; } ;
struct tpm_chip {struct device dev; } ;


 void* dev_get_drvdata (struct device*) ;
 int release_region (int ,int) ;
 int tpm_chip_unregister (struct tpm_chip*) ;

__attribute__((used)) static void tpm_nsc_remove(struct device *dev)
{
 struct tpm_chip *chip = dev_get_drvdata(dev);
 struct tpm_nsc_priv *priv = dev_get_drvdata(&chip->dev);

 tpm_chip_unregister(chip);
 release_region(priv->base, 2);
}
