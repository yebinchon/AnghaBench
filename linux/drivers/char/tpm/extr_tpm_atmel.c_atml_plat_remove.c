
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tpm_chip {int dev; } ;
struct tpm_atmel_priv {int iobase; int region_size; int base; scalar_t__ have_region; } ;
struct TYPE_3__ {int dev; } ;


 int atmel_put_base_addr (int ) ;
 int atmel_release_region (int ,int ) ;
 void* dev_get_drvdata (int *) ;
 TYPE_1__* pdev ;
 int platform_device_unregister (TYPE_1__*) ;
 int tpm_chip_unregister (struct tpm_chip*) ;

__attribute__((used)) static void atml_plat_remove(void)
{
 struct tpm_chip *chip = dev_get_drvdata(&pdev->dev);
 struct tpm_atmel_priv *priv = dev_get_drvdata(&chip->dev);

 tpm_chip_unregister(chip);
 if (priv->have_region)
  atmel_release_region(priv->base, priv->region_size);
 atmel_put_base_addr(priv->iobase);
 platform_device_unregister(pdev);
}
