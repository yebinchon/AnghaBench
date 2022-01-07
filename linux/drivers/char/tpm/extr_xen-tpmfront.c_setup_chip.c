
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_private {struct tpm_chip* chip; int read_queue; } ;
struct tpm_chip {int dev; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (struct tpm_chip*) ;
 int PTR_ERR (struct tpm_chip*) ;
 int dev_set_drvdata (int *,struct tpm_private*) ;
 int init_waitqueue_head (int *) ;
 int tpm_vtpm ;
 struct tpm_chip* tpmm_chip_alloc (struct device*,int *) ;

__attribute__((used)) static int setup_chip(struct device *dev, struct tpm_private *priv)
{
 struct tpm_chip *chip;

 chip = tpmm_chip_alloc(dev, &tpm_vtpm);
 if (IS_ERR(chip))
  return PTR_ERR(chip);

 init_waitqueue_head(&priv->read_queue);

 priv->chip = chip;
 dev_set_drvdata(&chip->dev, priv);

 return 0;
}
