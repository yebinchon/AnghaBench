
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int dev; } ;
struct tpm_private {int dummy; } ;
struct tpm_chip {int dev; } ;


 void* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int ring_free (struct tpm_private*) ;
 int tpm_chip_unregister (struct tpm_chip*) ;

__attribute__((used)) static int tpmfront_remove(struct xenbus_device *dev)
{
 struct tpm_chip *chip = dev_get_drvdata(&dev->dev);
 struct tpm_private *priv = dev_get_drvdata(&chip->dev);
 tpm_chip_unregister(chip);
 ring_free(priv);
 dev_set_drvdata(&chip->dev, ((void*)0));
 return 0;
}
